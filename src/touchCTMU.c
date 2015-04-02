#include "TimeDelay.h"
#include "plib.h"
#include "touchCTMU.h"

// PEB#define NUM_DIRECT_KEYS  8
// PEB static unsigned short int ButtonADCChannels[NUM_DIRECT_KEYS] = {0,1,4,5,6,7,8,9};

#define NOPs()    asm("NOP");asm("NOP");asm("NOP");asm("NOP");asm("NOP")

#define NUM_DIRECT_KEYS  4
/* see data sheet for ADC channel info */
static unsigned short int ButtonADCChannels[NUM_DIRECT_KEYS] = {0,1,3,4};
unsigned short int ButtonVmeasADC[NUM_DIRECT_KEYS]={0,0,0,0}; // Report out all voltages at once

unsigned char Nnops=3;
short int CurrentButtonStatus=0; // Bit field of buttons that are pressed

/* 
   a sample collection
*/
struct sample_t {
    unsigned int timestamp; // incremented every 1/120 sec. it will wrap around in 414 days
                            // the SAMPLES are not necessarily updated every 1/120
    short int buttonStatus; // updated when all sampling and averaging for all 4 buttons is done
    unsigned short int ButtonVmeasADC[NUM_DIRECT_KEYS]; // updated when all sampling and average for all 4 button is done
} ;

/* 
   these values are updated at the last state of the touchInterrupt() 
   sample+averaging cycle so are valid anytime
   they can be used in conjunction with the timestamp
   by  touch functions to see how fast buttons are changing
*/
#define NUMSAMPLES 3
static struct sample_t sample[NUMSAMPLES] = {{0, 0, {0 ,0 ,0 ,0}}};

/* a MAXSAMPLE is kept to use for testing if a button is pressed, it is sample NUMSAMPLE-1 */
# define MAXSAMPLE (NUMSAMPLES-1)

/* new way using MAXSAMPLE to calculate */
short int sampleButtonStatus = 0; // Bit field of buttons that are pressed

short int G_buttonDetectValue=0x800; // cap touch detect value. old way was 32767, the midpoint between  0..65535

/* 
   Using this function is not recommended and it does NOT run from the interrupt
   see touchInterrupt() for that code.
*/
void getTouch()
{
    unsigned long int  ADC_Sum; // For averaging multiple ADC measurements
    unsigned short int iAvg, // Averaging index
                       //Naverages = 32, // Number of averages < 2^22 (22=32-10 bits of ADC)
                       //Log2Naverages = 5; // Right shift equal to 1/Naverages
                       Naverages = 16, // Number of averages < 2^22 (22=32-10 bits of ADC)
                       Log2Naverages = 4; // Right shift equal to 1/Naverages
    short int          iButton, // Button Index
                       iChan; // ADC channel index
    unsigned short int VmeasADC, VavgADC, nops; // Measured Voltages, 65536 = Full Scale

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
            DelayMs(1);               // Wait 1 msecs for grounding
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
        if ( VavgADC < TOUCH_BUTTON_THRESHOLD )
        {
            CurrentButtonStatus += 1<<iButton;
        }
        ButtonVmeasADC[iButton] = VavgADC;

    }//end for ( iButton = 0; iButton < NUM_DIRECT_KEYS; iButton++ )

}



// void (*menu_escape_cb)(unsigned char, int);
void (*menu_escape_cb)(void) = NULL;

/*
  interrupt CTMU state
*/
enum {
      TOUCH_INIT=0,
      TOUCH_IDLE,
      TOUCH_SAMPLE_START,
      TOUCH_GROUNDCHARGEPUMP_START,
      TOUCH_GROUNDCHARGEPUMP_STOP,
      TOUCH_CHARGECIRCUIT_START,
      TOUCH_ATOD_START,
      TOUCH_CHARGECIRCUIT_STOP,
      TOUCH_ATOD_STOP,
      TOUCH_ATOD_SAMPLE,
      TOUCH_ATOD_MATH,
      TOUCH_ATOD_NEXTBUTTON,
      TOUCH_STORE_SAMPLES,
      TOUCH_COMPUTE_BUTTONS
} ;

unsigned char touchState = TOUCH_INIT;

void initTouch()
{
    touchState = TOUCH_INIT;
    // touchInterrupt(); // PEB: don't force it, as this may overlap a real interrupt happening
}

unsigned char G_button=0; // physical button on/off
unsigned char G_buttonCnt=0; // physical button on period

/*
   This code is run from timer3 interrupt in timer1_int.c
   It is an unrolled / statefull version of getTouch()
*/
void touchInterrupt()
{
    static unsigned long int ADC_Sum; // For averaging multiple ADC measurements, persistant
    static unsigned short int iAvg; // Averaging index persistant

    unsigned short int //Naverages = 32, // Number of averages < 2^22 (22=32-10 bits of ADC)
                       //Log2Naverages = 5; // Right shift equal to 1/Naverages
                       Naverages = 16, // Number of averages < 2^22 (22=32-10 bits of ADC)
                       Log2Naverages = 4; // Right shift equal to 1/Naverages

    static short int iButton=0; // Button Index, persistent across calls

    static unsigned short int VmeasADC, VavgADC; // Measured Voltages, 65536 = Full Scale

    static short int tmpCurrentButtonStatus=0; // temp version of Bit field of buttons that are pressed. not updated till all are ready
    static unsigned int timestamp=0;


    timestamp++; // 1/120 sec. this will wrap around in 414 days = ((((pow(2, 32))/ 120) / 3600) / 24)

    /* See if button is pushed and debounce-  Bit 3 of port C */
    if (!PORTCbits.RC3) {
        if (G_buttonCnt > 4) /* 4/120 = 1/30 sec. plenty of debounce */
        {
            G_button = 1;
        }

        if (G_buttonCnt == 255) {
           if (menu_escape_cb != NULL) menu_escape_cb();
           G_buttonCnt=0;
        }
        else
           G_buttonCnt++;
    }
    else {
        G_buttonCnt = 0;
        G_button = 0;
    }

    switch (touchState) {
        case TOUCH_INIT:
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
            AD1CSSL = 0x0;        // No channels scanned
            IEC0bits.AD1IE = 0; // Disable ADC interrupts
            AD1CON1bits.ON = 1; // Turn on ADC

            CurrentButtonStatus = 0;
            tmpCurrentButtonStatus = 0;

            sampleButtonStatus = 0;
            sample[MAXSAMPLE].ButtonVmeasADC[0] = 0;
            sample[MAXSAMPLE].ButtonVmeasADC[1] = 0;
            sample[MAXSAMPLE].ButtonVmeasADC[2] = 0;
            sample[MAXSAMPLE].ButtonVmeasADC[3] = 0;
            sample[MAXSAMPLE].timestamp = 0;
            sample[MAXSAMPLE].buttonStatus = 0;

            touchState++;
            break;

        case TOUCH_IDLE:
            //for ( iButton = 0; iButton < NUM_DIRECT_KEYS; iButton++ )
            //{
            /* RA0 = AN0, RA1 = AN1, RB1 = AN3, RB2 = AN4 */
            AD1CHSbits.CH0SA = ButtonADCChannels[iButton];
    //        for ( iAvg = 0; iAvg < Naverages; iAvg++ )
    //        {
            touchState++;
            break;

        case TOUCH_SAMPLE_START:
            AD1CON1bits.SAMP = 1;     // Manual sampling start
            touchState++;
            break;

        case TOUCH_GROUNDCHARGEPUMP_START:
            CTMUCONbits.IDISSEN = 1;  // Ground charge pump
            touchState++;
            break;

        case TOUCH_GROUNDCHARGEPUMP_STOP:
            CTMUCONbits.IDISSEN = 0;  // End drain of circuit
            touchState++;
            break;

        case TOUCH_CHARGECIRCUIT_START:
//          switch (iButton)
//          {
//                /* demo cases have calibrated waits hard wired */
//                case 0:
//                case 1:
//                case 2:
//                case 3:
            CTMUCONbits.EDG1STAT = 1; // Begin charging the circuit
//          for (nops=0; nops<Nnops; nops++); FiveNOPs();
            switch (iButton) {
                unsigned char nops;

                case LEFT_SLIDER:
                    for (nops=0; nops<Nnops+1; nops++);
                    break;

                case RIGHT_SLIDER:
                    for (nops=0; nops<Nnops+2; nops++);
                    break;

                case TOP_SLIDER:
                    for (nops=0; nops<Nnops; nops++);
                    break;

                case BOTTOM_SLIDER:
                    for (nops=0; nops<Nnops; nops++);
                    break;
            }
            touchState++;
            // break; // fall though interrupt takes to long
        case TOUCH_ATOD_START:
            AD1CON1bits.SAMP = 0;     // Begin analog-to-digital conversion
            touchState++;
            // break; // fall through, interrupt takes to long
        case TOUCH_CHARGECIRCUIT_STOP:
            CTMUCONbits.EDG1STAT = 0; // Stop charging circuit
            touchState++;
            break;

        case TOUCH_ATOD_STOP:       // wait for AtoD to finish. This could take several interrupts
            if (AD1CON1bits.DONE) touchState++;
            break;

        case TOUCH_ATOD_SAMPLE:
            AD1CON1bits.DONE = 0; // ADC conversion done, clear flag
            VmeasADC = ADC1BUF0;  // Get the value from the ADC
            ADC_Sum += VmeasADC;  // Update averaging sum

            iAvg++;
            if (iAvg < Naverages) {
                touchState = TOUCH_SAMPLE_START; /* back to sample another */
            }
            else {
                iAvg = 0;
                touchState++;
            }
            break;

        case TOUCH_ATOD_MATH:
            if ( Log2Naverages-6 > 0 ) {
                VavgADC = ADC_Sum >> (Log2Naverages-6); // Full scale = 2^10<<6 = 65536
            }
            else {
                VavgADC = ADC_Sum << (6-Log2Naverages); // Full scale = 2^10<<6 = 65536
            }
            if ( VavgADC < TOUCH_BUTTON_THRESHOLD ) {
                tmpCurrentButtonStatus |= (1 << iButton);
            }

            ButtonVmeasADC[iButton] = VavgADC;
            ADC_Sum = 0;

            touchState++;
            break;

        case TOUCH_ATOD_NEXTBUTTON:
            iButton++;
            if (iButton < NUM_DIRECT_KEYS) {
                touchState = TOUCH_IDLE; /* next button */
            }
            else {
                iButton = 0; /* start over */
                touchState++;
            }
            break;

        case TOUCH_STORE_SAMPLES:
            /* store MAX values in MAXSAMPLE */
            if (sample[MAXSAMPLE].ButtonVmeasADC[0] < ButtonVmeasADC[0])    sample[MAXSAMPLE].ButtonVmeasADC[0] = ButtonVmeasADC[0];
            if (sample[MAXSAMPLE].ButtonVmeasADC[1] < ButtonVmeasADC[1])    sample[MAXSAMPLE].ButtonVmeasADC[1] = ButtonVmeasADC[1];
            if (sample[MAXSAMPLE].ButtonVmeasADC[2] < ButtonVmeasADC[2])    sample[MAXSAMPLE].ButtonVmeasADC[2] = ButtonVmeasADC[2];
            if (sample[MAXSAMPLE].ButtonVmeasADC[3] < ButtonVmeasADC[3])    sample[MAXSAMPLE].ButtonVmeasADC[3] = ButtonVmeasADC[3];
            sample[MAXSAMPLE].timestamp =         sample[1].timestamp;
            sample[MAXSAMPLE].buttonStatus =      sample[1].buttonStatus;

            sample[1].timestamp =         sample[0].timestamp;
            sample[1].buttonStatus =      sample[0].buttonStatus;
            sample[1].ButtonVmeasADC[0] = sample[0].ButtonVmeasADC[0];
            sample[1].ButtonVmeasADC[1] = sample[0].ButtonVmeasADC[1];
            sample[1].ButtonVmeasADC[2] = sample[0].ButtonVmeasADC[2];
            sample[1].ButtonVmeasADC[3] = sample[0].ButtonVmeasADC[3];

            /* copy to output status */
            sample[0].timestamp = timestamp;
            sample[0].buttonStatus = tmpCurrentButtonStatus;
            sample[0].ButtonVmeasADC[0] = ButtonVmeasADC[0];
            sample[0].ButtonVmeasADC[1] = ButtonVmeasADC[1];
            sample[0].ButtonVmeasADC[2] = ButtonVmeasADC[2];
            sample[0].ButtonVmeasADC[3] = ButtonVmeasADC[3];

            touchState++;
            break;


        case TOUCH_COMPUTE_BUTTONS:
            /* new MAXSAMPLED button values */
            sampleButtonStatus = 0;
            if ( (sample[0].ButtonVmeasADC[LEFT_SLIDER] + G_buttonDetectValue) < sample[MAXSAMPLE].ButtonVmeasADC[LEFT_SLIDER]) {
		/* check if already on, otherwise ignore and DONT update timestamp  */
		if (!(sampleButtonStatus & LEFT_SLIDER_MASK)) {
			sampleButtonStatus |= LEFT_SLIDER_MASK;
			sample[MAXSAMPLE].timestamp = timestamp; /* apps can tell if start/stop by checking timestamp */
		}
	    }

            if ( (sample[0].ButtonVmeasADC[RIGHT_SLIDER] + G_buttonDetectValue) < sample[MAXSAMPLE].ButtonVmeasADC[RIGHT_SLIDER]) {
		/* check if already on, otherwise ignore and DONT update timestamp  */
		if (!(sampleButtonStatus & RIGHT_SLIDER_MASK)) {
			sampleButtonStatus |= RIGHT_SLIDER_MASK;
			sample[MAXSAMPLE].timestamp = timestamp; /* apps can tell if start/stop by checking timestamp */
		}
	    }

            if ( (sample[0].ButtonVmeasADC[TOP_SLIDER] + G_buttonDetectValue) < sample[MAXSAMPLE].ButtonVmeasADC[TOP_SLIDER]) {
		/* check if already on, otherwise ignore and DONT update timestamp  */
		if (!(sampleButtonStatus & TOP_SLIDER_MASK)) {
			sampleButtonStatus |= TOP_SLIDER_MASK;
			sample[MAXSAMPLE].timestamp = timestamp; /* apps can tell if start/stop by checking timestamp */
		}
	    }

            if ( (sample[0].ButtonVmeasADC[BOTTOM_SLIDER] + G_buttonDetectValue) < sample[MAXSAMPLE].ButtonVmeasADC[BOTTOM_SLIDER]) {
		/* check if already on, otherwise ignore and DONT update timestamp  */
		if (!(sampleButtonStatus & BOTTOM_SLIDER_MASK)) {
			sampleButtonStatus |= BOTTOM_SLIDER_MASK;
			sample[MAXSAMPLE].timestamp = timestamp; /* apps can tell if start/stop by checking timestamp */
		}
	    }

            if (G_button == 1)  {
		if (!(sampleButtonStatus & BUTTON_MASK)) {
			sampleButtonStatus |= BUTTON_MASK;
			sample[MAXSAMPLE].timestamp = timestamp; /* apps can tell if start/stop by checking timestamp */
		}
	    }

            /* old way */
            CurrentButtonStatus = tmpCurrentButtonStatus;
            if (G_button == 1)
                CurrentButtonStatus |= (1 <<4);
            
            tmpCurrentButtonStatus = 0;
            touchState++;
            break;

        default:
            touchState = TOUCH_IDLE;
            break;
    }
}
