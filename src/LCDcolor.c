#define NEWCHARFUNCT

#include "plib.h"
#include "S6B33.h"
#include "LCDcolor.h"
#include "font.h"
#include "assets.h"
#include "assetList.h"

/*
    LCD  serial (S6Bxx) interface driver
    Author: Paul Bruggeman
    paul@killercats.com
    4/2015

    LCDscan functions
    Author: Jonathan Lundquist
    jonathan46000@gmail.com
*/




/* lame 
void MS(unsigned char ms)
{
//   unsigned char i, m;
//   for (m=0; m<ms; m++) {
//      for (i=0; i<2; i++) ;
//   }
}*/

/* CS_ and _RESET are held low */
/* so the LCD is doing nothing  until lcd_init_device happens */
void LCDInitPins(void) {
   /* RC9 == Backlight LED PIN active==high */
   TRISCbits.TRISC9 = 0;    /* output */
   LATCbits.LATC9 = 0;      /* init low */
   CNPDCbits.CNPDC9 = 1;    /* pulldown == on */

   /* RC8 == _RESET PIN active==low*/
   TRISCbits.TRISC8 = 0;    /* output */
   LATCbits.LATC8 = 0;      /* init low */
   CNPDCbits.CNPDC8 = 1;    /* pulldown == on */

   /* RC7 == A0 PIN */
   TRISCbits.TRISC7 = 0;    /* output */
   LATCbits.LATC7 = 0;      /* init low */
   CNPDCbits.CNPDC7 = 1;    /* pulldown == on */

   /* RC6 == SDA PIN */
   TRISCbits.TRISC6 = 0;    /* output */
   LATCbits.LATC6 = 0;      /* init low */
   CNPDCbits.CNPDC6 = 1;    /* pulldown == on */

   /* RB9 == SCLK PIN */
   TRISBbits.TRISB9 = 0;    /* output */
   LATBbits.LATB9 = 0;      /* init low */
   CNPDBbits.CNPDB9 = 1;    /* pulldown == on */

   /* RB8 == _CS PIN active==low */
   TRISBbits.TRISB8 = 0;    /* output */
   LATBbits.LATB8 = 0;      /* init low */
   CNPDBbits.CNPDB8 = 1;    /* pulldown == on */
}

void LCDDelay()
{
   unsigned int i;
   for(i=0; i<1000; i++) ;
}

void LCDReset(void) {

   LATBbits.LATB8 = 0; /* CS = yes */
   LATCbits.LATC8 = 0; /* reset = yes */
   LCDDelay();

   LATCbits.LATC8 = 1; /* reset = no */
   LCDDelay();

   LATBbits.LATB8 = 1; /* CS = no */
   LCDDelay();

   S6B33_init_device(); /* set important internal registers */
}

void LCDinit_scan(void){
    S6B33_rect(0, 0, 131, 131);
}

unsigned short scan_bucket[132];

void LCDlineScan(int x0, int y0, int x1, int y1, int lineCurrent, unsigned short color){

  int dx = abs(x1-x0), sx = x0<x1 ? 1 : -1;
  int dy = abs(y1-y0), sy = y0<y1 ? 1 : -1;
  int err = (dx>dy ? dx : -dy)/2, e2;

  for(;;){
    if(y0==lineCurrent-1)
    {
      scan_bucket[x0]=color;
    }
    //if(y0>lineCurrent) break;
    if (x0==x1 && y0==y1) break;
    e2 = err;
    if (e2 > -dx) { err -= dy; x0 += sx; }
    if (e2 < dy) { err += dx; y0 += sy; }
  }
}

int LCDSend_bucket(void){
    unsigned char j;
    for(j=0;j<132;j++)
                S6B33_pixel(scan_bucket[j]);
    return 1;
}

void LCDBackgroundScan(unsigned short color){
    unsigned char j;
    for(j=0;j<132;j++)
        scan_bucket[j] = color;
}


void LCDrectangleScan(unsigned char x, //calls 4 line scans for rectangle
        unsigned char y,
        unsigned char width,
        unsigned char height,
        unsigned char lineCurrent,
        unsigned short color)
{
    LCDlineScan(x,y,x,y+height,lineCurrent, color);
    LCDlineScan(x+width,y,x+width,y+height,lineCurrent, color);
    LCDlineScan(x,y,x+width,y,lineCurrent,color);
    LCDlineScan(x,y+height-1,x+width,y+height-1,lineCurrent, color);
}

void LCDFilledRectangleScan(unsigned char x,
        unsigned char y,
        unsigned char width,
        unsigned char height,
        unsigned char lineCurrent,
        unsigned short color
        )
{
    if(lineCurrent >= y && lineCurrent <= y+height){
        LCDlineScan(x,lineCurrent-1,x+width,lineCurrent-1,lineCurrent,color);
    }
}

#ifdef NONVECTOR
void LCDCharacterScan(unsigned char y,
        unsigned char x,
        unsigned char charin,
        unsigned char lineCurrent,
        unsigned short color)
{
    scanCharLCD1(FONT, y-7, x-5, charin, lineCurrent, color, 8);
}

#endif

#ifdef NEWCHARFUNCT

void LCDCharacterScan(unsigned char y,//Hard coded font. Scans
        unsigned char x,              //Calls scan line function for
        unsigned char charin,         //character values
        unsigned char lineCurrent,
        unsigned short color)
{
    if(charin >= 'a' && charin <= 'z')
    {
        LCDScanLowSet(x,y,charin,lineCurrent,color,97);
    }
    if(charin >= 'A' && charin <= 'Z')
    {
        LCDScanLowSet(x,y,charin,lineCurrent,color,65);
    }
    if(charin >= '0' && charin <= '9')
    {
        LCDScanLowSet(x,y,charin,lineCurrent,color,22);
    }
    if(charin == '.')
    {
        LCDlineScan(x-3,y-1,x-3,y-1,lineCurrent,color);
    }
    if(charin == ':')
    {
        LCDlineScan(x-3,y-1,x-3,y-1,lineCurrent,color);
        LCDlineScan(x-3,y-4,x-3,y-4,lineCurrent,color);
    }
    if(charin == '!')
    {
        LCDlineScan(x-3,y-1,x-3,y-1,lineCurrent,color);
        LCDlineScan(x-3,y-8,x-3,y-3,lineCurrent,color);
    }
    if(charin == '-')
    {
        LCDlineScan(x-4,y-4,x-2,y-4,lineCurrent,color);
    }
    if(charin == '_')
    {
        LCDlineScan(x-5,y-1,x-1,y-1,lineCurrent,color);
    }
    if(charin == ' ')
    {

    }
}

void LCDCharScanLow(unsigned char x,
        unsigned char y,
        unsigned char charin,
        unsigned char lineCurrent,
        unsigned short color,
        unsigned char line,
        unsigned char asciioffset){
    if(font[charin-asciioffset][line][0] == 0 &&
            font[charin-asciioffset][line][1] == 0 &&
            font[charin-asciioffset][line][2] == 0 &&
            font[charin-asciioffset][line][3] == 0
            ){}
    else{
        LCDlineScan(x-font[charin-asciioffset][line][0],
                y-font[charin-asciioffset][line][1],
                x-font[charin-asciioffset][line][2],
                y-font[charin-asciioffset][line][3],
                lineCurrent,color);
    }
}

void LCDScanLowSet(unsigned char x,
        unsigned char y,
        unsigned char charin,
        unsigned char lineCurrent,
        unsigned short color,
        unsigned char asciioffset){

        LCDCharScanLow(x,y,charin,lineCurrent,color,0,asciioffset);
        LCDCharScanLow(x,y,charin,lineCurrent,color,1,asciioffset);
        LCDCharScanLow(x,y,charin,lineCurrent,color,2,asciioffset);
        LCDCharScanLow(x,y,charin,lineCurrent,color,3,asciioffset);
        LCDCharScanLow(x,y,charin,lineCurrent,color,4,asciioffset);
        LCDCharScanLow(x,y,charin,lineCurrent,color,5,asciioffset);
        LCDCharScanLow(x,y,charin,lineCurrent,color,6,asciioffset);
}

//LCDCharScanLow(x,y,charin,lineCurrent,color,0,97)
#endif

#ifdef OLDCHARFUNCT
void LCDCharacterScan(unsigned char y,//Hard coded font. Scans
        unsigned char x,              //Calls scan line function for
        unsigned char charin,         //character values
        unsigned char lineCurrent,
        unsigned short color)
{
    if(charin == 'A' || charin == 'a')
    {
        LCDlineScan(x-1,y-1,x-3,y-8,lineCurrent,color);
        LCDlineScan(x-2,y-3,x-4,y-3,lineCurrent,color);
        LCDlineScan(x-5,y-1,x-3,y-8,lineCurrent,color);
    }
    else if(charin == 'B' || charin == 'b')
    {
        LCDlineScan(x-5,y-8,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-1,y-1,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-4,y-4,x-2,y-4,lineCurrent,color);
        LCDlineScan(x-4,y-8,x-3,y-8,lineCurrent,color);
        LCDlineScan(x-2,y-7,x-2,y-5,lineCurrent,color);
        LCDlineScan(x-1,y-3,x-1,y-1,lineCurrent,color);
    }
    else if(charin == 'C' || charin == 'c')
    {

        LCDlineScan(x-2,y-8,x-4,y-8,lineCurrent,color);
        LCDlineScan(x-5,y-7,x-5,y-2,lineCurrent,color);
        LCDlineScan(x-2,y-1,x-4,y-1,lineCurrent,color);
        LCDlineScan(x-1,y-7,x-1,y-7,lineCurrent,color);
        LCDlineScan(x-1,y-2,x-1,y-2,lineCurrent,color);

    }
    else if(charin == 'D' || charin == 'd')
    {
        LCDlineScan(x-5,y-8,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-4,y-1,x-3,y-1,lineCurrent,color);
        LCDlineScan(x-4,y-8,x-3,y-8,lineCurrent,color);
        LCDlineScan(x-2,y-2,x-2,y-2,lineCurrent,color);
        LCDlineScan(x-2,y-7,x-2,y-7,lineCurrent,color);
        LCDlineScan(x-1,y-6,x-1,y-3,lineCurrent,color);
    }
    else if(charin == 'E' || charin == 'e')
    {
        LCDlineScan(x-5,y-8,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-4,y-8,x-1,y-8,lineCurrent,color);
        LCDlineScan(x-4,y-1,x-1,y-1,lineCurrent,color);
        LCDlineScan(x-4,y-4,x-2,y-4,lineCurrent,color);
    }
    else if(charin == 'F' || charin == 'f')
    {
        LCDlineScan(x-5,y-8,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-4,y-8,x-1,y-8,lineCurrent,color);
        LCDlineScan(x-4,y-4,x-2,y-4,lineCurrent,color);
    }
    else if(charin == 'G' || charin == 'g')
    {
        LCDlineScan(x-2,y-8,x-4,y-8,lineCurrent,color);
        LCDlineScan(x-5,y-7,x-5,y-2,lineCurrent,color);
        LCDlineScan(x-2,y-1,x-4,y-1,lineCurrent,color);
        LCDlineScan(x-1,y-7,x-1,y-7,lineCurrent,color);
        LCDlineScan(x-1,y-2,x-1,y-2,lineCurrent,color);
        LCDlineScan(x-2,y-3,x-1,y-3,lineCurrent,color);
    }
    else if(charin == 'H' || charin == 'h')
    {
        LCDlineScan(x-5,y-8,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-1,y-8,x-1,y-1,lineCurrent,color);
        LCDlineScan(x-4,y-4,x-2,y-4,lineCurrent,color);
    }
    else if(charin == 'I' || charin == 'i')
    {
        LCDlineScan(x-5,y-8,x-1,y-8,lineCurrent,color);
        LCDlineScan(x-5,y-1,x-1,y-1,lineCurrent,color);
        LCDlineScan(x-3,y-8,x-3,y-1,lineCurrent,color);
    }
    else if(charin == 'J' || charin == 'j')
    {
        LCDlineScan(x-3,y-8,x-2,y-8,lineCurrent,color);
        LCDlineScan(x-2,y-7,x-2,y-2,lineCurrent,color);
        LCDlineScan(x-3,y-1,x-4,y-1,lineCurrent,color);
        LCDlineScan(x-5,y-2,x-5,y-2,lineCurrent,color);
    }
    else if(charin == 'K' || charin == 'k')
    {
        LCDlineScan(x-5,y-8,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-4,y-4,x-1,y-8,lineCurrent,color);
        LCDlineScan(x-4,y-4,x-1,y-1,lineCurrent,color);
    }
    else if(charin == 'L' || charin == 'l')
    {
        LCDlineScan(x-5,y-8,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-5,y-1,x-1,y-1,lineCurrent,color);
    }
    else if(charin == 'M' || charin == 'm')
    {
        LCDlineScan(x-5,y-8,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-1,y-8,x-1,y-1,lineCurrent,color);
        LCDlineScan(x-5,y-8,x-3,y-5,lineCurrent,color);
        LCDlineScan(x-1,y-8,x-3,y-5,lineCurrent,color);
    }
    else if(charin == 'N' || charin == 'n')
    {
        LCDlineScan(x-5,y-8,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-1,y-8,x-1,y-1,lineCurrent,color);
        LCDlineScan(x-5,y-8,x-1,y-1,lineCurrent,color);
    }
    else if(charin == 'O' || charin == 'o')
    {
        LCDlineScan(x-5,y-2,x-5,y-7,lineCurrent,color);
        LCDlineScan(x-1,y-2,x-1,y-7,lineCurrent,color);
        LCDlineScan(x-4,y-8,x-2,y-8,lineCurrent,color);
        LCDlineScan(x-4,y-1,x-2,y-1,lineCurrent,color);
    }
    else if(charin == 'P' || charin == 'p')
    {
        LCDlineScan(x-5,y-8,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-4,y-8,x-2,y-8,lineCurrent,color);
        LCDlineScan(x-4,y-5,x-2,y-5,lineCurrent,color);
        LCDlineScan(x-1,y-6,x-1,y-7,lineCurrent,color);
    }
    else if(charin == 'Q' || charin == 'q')
    {
        LCDlineScan(x-5,y-2,x-5,y-7,lineCurrent,color);
        LCDlineScan(x-1,y-2,x-1,y-7,lineCurrent,color);
        LCDlineScan(x-4,y-8,x-2,y-8,lineCurrent,color);
        LCDlineScan(x-4,y-1,x-2,y-1,lineCurrent,color);
        LCDlineScan(x-2,y-2,x-1,y-1,lineCurrent,color);
    }
    else if(charin == 'R' || charin == 'r')
    {
        LCDlineScan(x-5,y-8,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-4,y-8,x-2,y-8,lineCurrent,color);
        LCDlineScan(x-4,y-5,x-2,y-5,lineCurrent,color);
        LCDlineScan(x-1,y-6,x-1,y-8,lineCurrent,color);
        LCDlineScan(x-1,y-4,x-1,y-1,lineCurrent,color);
    }
    else if(charin == 'S' || charin == 's')
    {
        LCDlineScan(x-2,y-8,x-4,y-8,lineCurrent,color);
        LCDlineScan(x-2,y-4,x-4,y-4,lineCurrent,color);
        LCDlineScan(x-2,y-1,x-4,y-1,lineCurrent,color);
        LCDlineScan(x-5,y-7,x-5,y-5,lineCurrent,color);
        LCDlineScan(x-1,y-3,x-1,y-2,lineCurrent,color);
    }
    else if(charin == 'T' || charin == 't')
    {
        LCDlineScan(x-5,y-8,x-1,y-8,lineCurrent,color);
        LCDlineScan(x-3,y-8,x-3,y-1,lineCurrent,color);
    }
    else if(charin == 'U' || charin == 'u')
    {
        LCDlineScan(x-5,y-8,x-5,y-2,lineCurrent,color);
        LCDlineScan(x-4,y-1,x-2,y-1,lineCurrent,color);
        LCDlineScan(x-1,y-8,x-1,y-2,lineCurrent,color);
    }
    else if(charin == 'V' || charin == 'v')
    {
        LCDlineScan(x-5,y-8,x-3,y-1,lineCurrent,color);
        LCDlineScan(x-1,y-8,x-3,y-1,lineCurrent,color);
    }
    else if(charin == 'W' || charin == 'w')
    {
        LCDlineScan(x-5,y-8,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-1,y-8,x-1,y-1,lineCurrent,color);
        LCDlineScan(x-4,y-2,x-3,y-3,lineCurrent,color);
        LCDlineScan(x-2,y-2,x-3,y-3,lineCurrent,color);
    }
    else if(charin == 'X' || charin == 'x')
    {
        LCDlineScan(x-5,y-8,x-1,y-1,lineCurrent,color);
        LCDlineScan(x-1,y-8,x-5,y-1,lineCurrent,color);
    }
    else if(charin == 'Y' || charin == 'y')
    {
        LCDlineScan(x-5,y-8,x-3,y-4,lineCurrent,color);
        LCDlineScan(x-1,y-8,x-3,y-4,lineCurrent,color);
        LCDlineScan(x-3,y-4,x-3,y-1,lineCurrent,color);
    }
    else if(charin == 'Z' || charin == 'z')
    {
        LCDlineScan(x-5,y-8,x-1,y-8,lineCurrent,color);
        LCDlineScan(x-5,y-1,x-1,y-1,lineCurrent,color);
        LCDlineScan(x-1,y-8,x-5,y-1,lineCurrent,color);
    }
    else if(charin == '0')
    {
        LCDlineScan(x-5,y-7,x-5,y-2,lineCurrent,color);
        LCDlineScan(x-1,y-7,x-1,y-2,lineCurrent,color);
        LCDlineScan(x-4,y-8,x-2,y-8,lineCurrent,color);
        LCDlineScan(x-4,y-1,x-2,y-1,lineCurrent,color);
        LCDlineScan(x-3,y-5,x-3,y-4,lineCurrent,color);
    }
     else if(charin == '1')
    {
        LCDlineScan(x-4,y-8,x-3,y-8,lineCurrent,color);
        LCDlineScan(x-3,y-8,x-3,y-1,lineCurrent,color);
        LCDlineScan(x-4,y-1,x-2,y-1,lineCurrent,color);
    }
    else if(charin == '2')
    {
        LCDlineScan(x-5,y-7,x-5,y-7,lineCurrent,color);
        LCDlineScan(x-4,y-8,x-2,y-8,lineCurrent,color);
        LCDlineScan(x-1,y-7,x-1,y-5,lineCurrent,color);
        LCDlineScan(x-2,y-4,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-4,y-1,x-1,y-1,lineCurrent,color);
    }
    else if(charin == '3')
    {
        LCDlineScan(x-5,y-8,x-2,y-8,lineCurrent,color);
        LCDlineScan(x-5,y-4,x-2,y-4,lineCurrent,color);
        LCDlineScan(x-5,y-1,x-2,y-1,lineCurrent,color);
        LCDlineScan(x-1,y-7,x-1,y-5,lineCurrent,color);
        LCDlineScan(x-1,y-3,x-1,y-2,lineCurrent,color);
    }
    else if(charin == '4')
    {
        LCDlineScan(x-1,y-8,x-1,y-1,lineCurrent,color);
        LCDlineScan(x-5,y-7,x-5,y-4,lineCurrent,color);
        LCDlineScan(x-4,y-4,x-2,y-4,lineCurrent,color);
    }
    else if(charin == '5')
    {
        LCDlineScan(x-1,y-8,x-5,y-8,lineCurrent,color);
        LCDlineScan(x-2,y-5,x-4,y-5,lineCurrent,color);
        LCDlineScan(x-2,y-1,x-5,y-1,lineCurrent,color);
        LCDlineScan(x-5,y-7,x-5,y-5,lineCurrent,color);
        LCDlineScan(x-1,y-4,x-1,y-2,lineCurrent,color);
    }
    else if(charin == '6')
    {
        LCDlineScan(x-1,y-3,x-1,y-2,lineCurrent,color);
        LCDlineScan(x-5,y-2,x-5,y-7,lineCurrent,color);
        LCDlineScan(x-4,y-8,x-2,y-8,lineCurrent,color);
        LCDlineScan(x-4,y-4,x-2,y-4,lineCurrent,color);
        LCDlineScan(x-4,y-1,x-2,y-1,lineCurrent,color);
        LCDlineScan(x-1,y-7,x-1,y-7,lineCurrent,color);
    }
    else if(charin == '7')
    {
        LCDlineScan(x-5,y-8,x-1,y-8,lineCurrent,color);
        LCDlineScan(x-1,y-8,x-1,y-1,lineCurrent,color);
    }
    else if(charin == '8')
    {
        LCDlineScan(x-2,y-8,x-4,y-8,lineCurrent,color);
        LCDlineScan(x-2,y-4,x-4,y-4,lineCurrent,color);
        LCDlineScan(x-2,y-1,x-4,y-1,lineCurrent,color);
        LCDlineScan(x-5,y-7,x-5,y-5,lineCurrent,color);
        LCDlineScan(x-1,y-3,x-1,y-2,lineCurrent,color);
        LCDlineScan(x-1,y-7,x-1,y-5,lineCurrent,color);
        LCDlineScan(x-5,y-3,x-5,y-2,lineCurrent,color);

    }
    else if(charin == '9')
    {
        LCDlineScan(x-2,y-8,x-4,y-8,lineCurrent,color);
        LCDlineScan(x-2,y-4,x-4,y-4,lineCurrent,color);
        LCDlineScan(x-2,y-1,x-4,y-1,lineCurrent,color);
        LCDlineScan(x-5,y-7,x-5,y-5,lineCurrent,color);
        LCDlineScan(x-1,y-7,x-1,y-2,lineCurrent,color);
    }
    else if(charin == '.')
    {
        LCDlineScan(x-3,y-1,x-3,y-1,lineCurrent,color);
    }
    else if(charin == ':')
    {
        LCDlineScan(x-3,y-1,x-3,y-1,lineCurrent,color);
        LCDlineScan(x-3,y-4,x-3,y-4,lineCurrent,color);
    }
    else if(charin == '!')
    {
        LCDlineScan(x-3,y-1,x-3,y-1,lineCurrent,color);
        LCDlineScan(x-3,y-8,x-3,y-3,lineCurrent,color);
    }
    else if(charin == '-')
    {
        LCDlineScan(x-4,y-4,x-2,y-4,lineCurrent,color);
    }
    else if(charin == '_')
    {
        LCDlineScan(x-5,y-1,x-1,y-1,lineCurrent,color);
    }
    else
    {
        
    }
}
#endif

/*
 void LCDCharacter()
{
}

void LCDgotoXY()
{
}

void LCD_RVASec_Logo()
{
}
*/


void LCDcolor(unsigned short pixel)
{
    unsigned char i,j;

    S6B33_rect(0, 0, 131, 131); /* display is really 132x132 */

    for (i=0; i<132; i++)
       for (j=0; j<132; j++)
               S6B33_pixel(pixel);
}

void LCDblack()
{
    LCDcolor(0b0000000000000000);
}

void LCDwhite()
{
    LCDcolor(0b1111111111111111);
}

void LCDred()
{
    LCDcolor(0b1111100000000000);
}

void LCDgreen()
{
    LCDcolor(0b0000011111100000);
}

void LCDblue()
{
    LCDcolor(0b0000000000011111);
}


#ifdef BARS
void LCDBars()
{
    unsigned char i,j;
    unsigned short pixel;

    S6B33_rect(0, 0, 131, 131); /* display is really 132x132 */

    for (i=0; i<16; i++) {
       for (j=0; j<132; j++) {
            //S6B33_pixel(j << 10 | i << 5 | j); /* red & blue, green=0 */

            //if (((j>(i%4)) % 8) == 0)
            if ((j % 16) == 0) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b1111111111111111); /* white */
               else
                   S6B33_pixel(0b1111111111111111); /* white */
            }

            if ((j % 16) == 1) {
               /*          rrrrrggggggbbbbb); */
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b1111111111111111); /* white */
               else
                   S6B33_pixel(0b1111111111111111); /* white */
            }


            if ((j % 16) == 2) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b1111111111111111); /* white */
               else
                   S6B33_pixel(0b0000000000000000); /* black */
            }

            if ((j % 16) == 3) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b1111111111111111); /* white */
               else
                   S6B33_pixel(0b0000000000000000); /* black */
            }


            if ((j % 16) == 4) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b0000000000000000); /* white */
               else
                   S6B33_pixel(0b1111100000000000); /* r */
            }

            if ((j % 16) == 5) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b0000000000000000); /* white */
               else
                   S6B33_pixel(0b1111100000000000); /* r */
            }


            if ((j % 16) == 6) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b0000000000000000); /* white */
               else
                   S6B33_pixel(0b0000011111100000); /* g */
            }

            if ((j % 16) == 7) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b0000000000000000); /* white */
               else
                   S6B33_pixel(0b0000011111100000); /* g */
            }


            if ((j % 16) == 8) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b1111111111111111); /* white */
               else
                   S6B33_pixel(0b0000000000011111); /* b */
            }

            if ((j % 16) == 9) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b1111111111111111); /* white */
               else
                   S6B33_pixel(0b0000000000011111); /* b */
            }



            if ((j % 16) == 10) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b1111111111111111); /* white */
               else
                   S6B33_pixel(0b1111100000011111); /* magenta */
            }

            if ((j % 16) == 11) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b1111111111111111); /* white */
               else
                   S6B33_pixel(0b1111100000011111); /* magenta */
            }



            if ((j % 16) == 12) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b0000000000000000); /* white */
               else
                   S6B33_pixel(0b0000011111111111); /* cyan */
            }

            if ((j % 16) == 13) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b0000000000000000); /* white */
               else
                   S6B33_pixel(0b0000011111111111); /* cyan */
            }


            if ((j % 16) == 14) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b0000000000000000); /* white */
               else
                   S6B33_pixel(0b1111111111100000); /* yellow */
            }

            if ((j % 16) == 15) {
               /*          rrrrrggggggbbbbb); */
               if (j < 32)
                   S6B33_pixel(0b0000000000000000); /* white */
               else
                   S6B33_pixel(0b1111111111100000); /* yellow */
            }

        }
    }
    /* yellow */
    for (i=16; i<33; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 11 ) | 
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) <<  6 ) |
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) <<  0)
            );
            S6B33_pixel(pixel);
       }

    /* magenta */
    for (i=33; i<49; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 11 ) | 
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) <<  6 ) |
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) <<  0)
            );
            S6B33_pixel(pixel);
       }

    /* cyan */
    for (i=49; i<66; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) << 11 ) | 
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) <<  6 ) |
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) <<  0)
            );
            S6B33_pixel(pixel);
       }

    /* red */
    for (i=66; i<82; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 11 ) | 
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) <<  6 ) |
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) <<  0)
            );
            S6B33_pixel(pixel);
       }

    /* green */
    for (i=82; i<98; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) << 11 ) | 
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) <<  6 ) |
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) <<  0)
            );
            S6B33_pixel(pixel);
       }

    /* blue */
    for (i=98; i<114; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) << 11 ) | 
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) <<  6 ) |
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) <<  0)
            );
            S6B33_pixel(pixel);
       }

    /* grey */
    for (i=114; i<132; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 11 ) | 
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) <<  6 ) |
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) <<  0)
            );
            S6B33_pixel(pixel);
       }

}
#else
void LCDBars()
{
}
#endif

#ifdef NONSCAN
void LCDline(int x0, int y0, int x1, int y1, unsigned short color) {//do not use unless line is diagonal
  void LCDputPixel(unsigned char x, unsigned char y, unsigned short color);

  int dx = abs(x1-x0), sx = x0<x1 ? 1 : -1;
  int dy = abs(y1-y0), sy = y0<y1 ? 1 : -1;
  int err = (dx>dy ? dx : -dy)/2, e2;

  for(;;){
    LCDputPixel(x0,y0, color);
    if (x0==x1 && y0==y1) break;
    e2 = err;
    if (e2 > -dx) { err -= dy; x0 += sx; }
    if (e2 < dy) { err += dx; y0 += sy; }
  }
}

void LCDLogo(void) {
}

// need a 1 bit shadow array to draw to then blit
void LCDputPixel(unsigned char x,//places one pixel
        unsigned char y,
        unsigned short color)
{
    S6B33_rect(y, x, 0, 0);
    S6B33_pixel(color);
}

#endif 


