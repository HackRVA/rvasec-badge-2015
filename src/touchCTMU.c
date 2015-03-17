#include "TimeDelay.h"
#include "plib.h"
#include "touchCTMU.h"

/*

need to rewrite to use interupts with the ADC


*/


// PEB#define NUM_DIRECT_KEYS  8
// PEB static unsigned short int ButtonADCChannels[NUM_DIRECT_KEYS] = {0,1,4,5,6,7,8,9};

#define NUM_DIRECT_KEYS  4
static unsigned short int ButtonADCChannels[NUM_DIRECT_KEYS] = {0,1,3,4};

#define TwoNOPs()    asm("NOP");asm("NOP");asm("NOP");asm("NOP");asm("NOP")
#define FiveNOPs()    asm("NOP");asm("NOP");asm("NOP");asm("NOP");asm("NOP")
#define TenNOPs()     FiveNOPs();FiveNOPs()
#define TwentyNOPs()  TenNOPs();TenNOPs()
#define ThirtyNOPs()  TenNOPs();TenNOPs();TenNOPs()
#define ThirtyFiveNOPs()  FiveNOPs();ThirtyNOPs()

unsigned short int ButtonVmeasADC[NUM_DIRECT_KEYS]; // Report out all voltages at once

unsigned char Nnops=5;
short int CurrentButtonStatus=0; // Bit field of buttons that are pressed

void initTouch()
{
     /* setup analog pins */
    // PEB RA0/CTED1 RA1/CTED2 RB1/CTED12 RB2/CTED13
    // make them inputs
    TRISAbits.TRISA0 = 1;
    TRISAbits.TRISA1 = 1;
    TRISBbits.TRISB1 = 1;
    TRISBbits.TRISB2 = 1;

    ANSELA = (1<<0) | (1<<1); //RA0,1
    ANSELB = (1<<1) | (1<<2); //RB1,2
    DelayMs(1);

    // CTMU Setup
    CTMUCONbits.IRNG = 3;  // 1 = 0.55uA 2 = 5.5uA 3 = 55uA 0 = 550uA
    CTMUCONbits.ON = 1;    // Turn on CTMU
    DelayMs(1);            // Wait 1 msec

    // ADC Setup
    AD1CON2 = 0x0; // VR+ = AVDD, V- = AVSS, Don't scan, MUX A only

    // ADC clock derived from peripheral buss clock
    // Tadc = 4 * Tpbus = 4 * 25 ns = 100 ns > 65 ns required
    // Tadc = 2*(    1       +1)*Tpbus
    // Tadc = 2*(AD1CON3<7:0>+1)*Tpbus
    AD1CON3 = 1;    // PEB 16 * Tpb;
}

void getTouch()
{
    unsigned long int  ADC_Sum; // For averaging multiple ADC measurements
    unsigned short int iAvg, // Averaging index
                       //Naverages = 32, // Number of averages < 2^22 (22=32-10 bits of ADC)
                       //Log2Naverages = 5; // Right shift equal to 1/Naverages
//                       Naverages = 16, // Number of averages < 2^22 (22=32-10 bits of ADC)
//                       Log2Naverages = 4; // Right shift equal to 1/Naverages
                       Naverages = 8, // Number of averages < 2^22 (22=32-10 bits of ADC)
                       Log2Naverages = 3; // Right shift equal to 1/Naverages
    short int          iButton, // Button Index
                       iChan; // ADC channel index
    unsigned short int VmeasADC, VavgADC, nops; // Measured Voltages, 65536 = Full Scale

    AD1CSSL = 0x0;        // No channels scanned
    IEC0bits.AD1IE = 0; // Dis-enable ADC interrupts
    AD1CON1bits.ON = 1; // Turn on ADC

    CurrentButtonStatus = 0;
    for ( iButton = 0; iButton < NUM_DIRECT_KEYS; iButton++ )
    {
        /* RA0 = AN0, RA1 = AN1, RB1 = AN3, RB2 = AN4 */
        iChan = ButtonADCChannels[iButton];
        AD1CHSbits.CH0SA = iChan;

        ADC_Sum = 0;
        for ( iAvg = 0; iAvg < Naverages; iAvg++ )
        {
            AD1CON1bits.SAMP = 1;     // Manual sampling start
            CTMUCONbits.IDISSEN = 1;  // Ground charge pump
            //DelayMs(1);               // Wait 1 msecs for grounding
            for (nops=0; nops<Nnops; nops++) ;
            CTMUCONbits.IDISSEN = 0;  // End drain of circuit

            switch (iButton)
            {
                /* demo cases have calibrated waits hard wired */
                case 0:
                case 1:
                case 2:
                case 3:
                    CTMUCONbits.EDG1STAT = 1; // Begin charging the circuit

                    for (nops=0; nops<Nnops; nops++);
                        //FiveNOPs();

                    AD1CON1bits.SAMP = 0;     // Begin analog-to-digital conversion
                    CTMUCONbits.EDG1STAT = 0; // Stop charging circuit
                    break;
            }//end switch iButton

            while (!AD1CON1bits.DONE) // Wait for ADC conversion
            {
                //Do Nothing
            }
            AD1CON1bits.DONE = 0; // ADC conversion done, clear flag
            VmeasADC = ADC1BUF0;  // Get the value from the ADC
            ADC_Sum += VmeasADC;  // Update averaging sum

        }//end for ( iAvg = 0; iAvg < Naverages; iAvg++ )

        if ( Log2Naverages-6 > 0 )
        {
            VavgADC = ADC_Sum >> (Log2Naverages-6); // Full scale = 2^10<<6 = 65536
        }
        else
        {
            VavgADC = ADC_Sum << (6-Log2Naverages); // Full scale = 2^10<<6 = 65536
        }
        if ( VavgADC < 32768 )
        {
            CurrentButtonStatus += 1<<iButton;
        }
        ButtonVmeasADC[iButton] = VavgADC;

    }//end for ( iButton = 0; iButton < NUM_DIRECT_KEYS; iButton++ )

    AD1CON1bits.ON = 0; // Turn on ADC

}

int G_buttonADCdone=1; /* will be set by interupt when ADC done */
void touchInterupt()
{
    unsigned long int  ADC_Sum; // For averaging multiple ADC measurements

    unsigned short int iAvg, // Averaging index
                       Naverages = 8, // Number of averages < 2^22 (22=32-10 bits of ADC)
                       Log2Naverages = 3; // Right shift equal to 1/Naverages

    short int          iButton=0, // Button Index
                       iChan; // ADC channel index

    unsigned short int VmeasADC, VavgADC, nops; // Measured Voltages, 65536 = Full Scale


    if (!G_buttonADCdone) return;
    G_buttonADCdone = 0;

    AD1CSSL = 0x0;        // No channels scanned
    AD1CON1bits.ON = 1; // Turn on ADC

    mAD1IntEnable(1); // enable AD1 interupts

    if (iAvg < Naverages) {
       iAvg++;
    } else {
	   iButton++;
	   if (iButton == NUM_DIRECT_KEYS) {
		   iButton = 0;
	   }
    }

	/* RA0 = AN0, RA1 = AN1, RB1 = AN3, RB2 = AN4 */
	iChan = ButtonADCChannels[iButton];
	AD1CHSbits.CH0SA = iChan;
	ADC_Sum = 0;

	AD1CON1bits.SAMP = 1;     // Manual sampling start
	CTMUCONbits.IDISSEN = 1;  // Ground charge pump
	//DelayMs(1);               // Wait 1 msecs for grounding
	for (nops=0; nops<Nnops; nops++) ;
	CTMUCONbits.IDISSEN = 0;  // End drain of circuit
	
	CTMUCONbits.EDG1STAT = 1; // Begin charging the circuit
	
	for (nops=0; nops<Nnops; nops++);
	
	AD1CON1bits.SAMP = 0;     // Begin analog-to-digital conversion
	CTMUCONbits.EDG1STAT = 0; // Stop charging circuit
	

#ifdef THISGOESINTHEINTERUPT
            while (!AD1CON1bits.DONE) // Wait for ADC conversion
            {
                //Do Nothing
            }
            AD1CON1bits.DONE = 0; // ADC conversion done, clear flag
            VmeasADC = ADC1BUF0;  // Get the value from the ADC
            ADC_Sum += VmeasADC;  // Update averaging sum


        if ( Log2Naverages-6 > 0 )
        {
            VavgADC = ADC_Sum >> (Log2Naverages-6); // Full scale = 2^10<<6 = 65536
        }
        else
        {
            VavgADC = ADC_Sum << (6-Log2Naverages); // Full scale = 2^10<<6 = 65536
        }
        if ( VavgADC < 32768 )
        {
            CurrentButtonStatus += 1<<iButton;
        }
        ButtonVmeasADC[iButton] = VavgADC;
#endif

}


