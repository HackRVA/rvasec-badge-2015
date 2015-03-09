#include "plib.h"
#include "S6B33.h"
#include "LCDcolor.h"
#include "drbob.h"
#include "mayo.h"

/* lame */
void MS(unsigned char ms)
{
//   unsigned char i, m;
//   for (m=0; m<ms; m++) {
//      for (i=0; i<2; i++) ;
//   }
}

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

void LCDClear(void) {//May not be needed
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

void LCDLogo(void) {
}

/* need a 1 bit shadow array to draw to then blit */
void putPixel(unsigned char x,//places one pixel
        unsigned char y,
        unsigned char color)
{
    S6B33_rect(y, x, 0, 0);
    S6B33_pixel(color);
}

void LCDline(int x0, int y0, int x1, int y1, unsigned char color) {//do not use unless line is diagonal
  void putPixel(unsigned char x, unsigned char y, unsigned char color);

  int dx = abs(x1-x0), sx = x0<x1 ? 1 : -1;
  int dy = abs(y1-y0), sy = y0<y1 ? 1 : -1; 
  int err = (dx>dy ? dx : -dy)/2, e2;
 
  for(;;){
    putPixel(x0,y0, color);
    if (x0==x1 && y0==y1) break;
    e2 = err;
    if (e2 >-dx) { err -= dy; x0 += sx; }
    if (e2 < dy) { err += dx; y0 += sy; }
  }
}

void LCDputpixel(unsigned char x,//redundant, may not be used check & delete
        unsigned char y,
        unsigned char color)
{
    S6B33_rect(y, x, 0, 0);
    S6B33_pixel(color);
}

void LCDrectangle(unsigned char x, //draws rectangle in most efficient manor
        unsigned char y,
        unsigned char width,
        unsigned char height,
        unsigned char color)
{
    LCDverticalline(x,y,height, color);
    LCDverticalline(x+width,y,height, color);
    LCDhorizontalline(x,y,width, color);
    LCDhorizontalline(x,y+height,width, color);
}

void LCDverticalline(unsigned char x, //Do not delete.  Uses far less
        unsigned char y,              //resources than line and is called
        unsigned char height,         //more often.
        unsigned char color)
{
    if((y+height) > 131)
        height = 131-y;

    unsigned char i, j;
    S6B33_rect(y, x, height, 0);
       for (i=0; i<132; i++)
           for(j=0; j<1; j++)
       {
            S6B33_pixel(color);
       }

}

void LCDhorizontalline(unsigned char x, //Do not delete.  Uses far less
        unsigned char y,                //resources than line and is called
        unsigned char width,            //more often.
        unsigned char color)
{
    if ((x+width) > 131)
        width = 131-x;

    unsigned char i, j;
    S6B33_rect(y, x, 0, width);
       for (i=0; i<1; i++)
           for(j=0; j<132; j++)
       {
            S6B33_pixel(color);
       }

}


void LCDCharacter(unsigned char x,//Hard coded font.  Working on replaceing line
        unsigned char y,          //functions with horizontal and vertical line
        unsigned char charin,     //functions.
        unsigned char color)
{
    if(charin == 'A' || charin == 'a')
    {
        LCDline(y+1,x-1,y+3,x-8,color);
        LCDline(y+2,x-3,y+4,x-3,color);
        LCDline(y+5,x-1,y+3,x-8,color);
    }
    else if(charin == 'B' || charin == 'b')
    {
        LCDverticalline(y+5,x-8,7,color);
        LCDline(y+1,x-1,y+5,x-1,color);
        LCDline(y+4,x-4,y+2,x-4,color);
        LCDline(y+4,x-8,y+3,x-8,color);
        LCDline(y+2,x-7,y+2,x-5,color);
        LCDline(y+1,x-3,y+1,x-1,color);
    }
    else if(charin == 'C' || charin == 'c')
    {

        LCDline(y+2,x-8,y+4,x-8,color);
        LCDverticalline(y+5,x-7,5,color);
        LCDline(y+2,x-1,y+4,x-1,color);
        LCDline(y+1,x-7,y+1,x-7,color);
        LCDline(y+1,x-2,y+1,x-2,color);

    }
    else if(charin == 'D' || charin == 'd')
    {
        LCDverticalline(y+5,x-8,7,color);
        LCDline(y+4,x-1,y+3,x-1,color);
        LCDline(y+4,x-8,y+3,x-8,color);
        LCDline(y+2,x-2,y+2,x-2,color);
        LCDline(y+2,x-7,y+2,x-7,color);
        LCDverticalline(y+1,x-6,3,color);
    }
    else if(charin == 'E' || charin == 'e')
    {
        LCDverticalline(y+5,x-8,7,color);
        LCDline(y+4,x-8,y+1,x-8,color);
        LCDline(y+4,x-1,y+1,x-1,color);
        LCDline(y+4,x-4,y+2,x-4,color);
    }
    else if(charin == 'F' || charin == 'f')
    {
        LCDverticalline(y+5,x-8,7,color);
        LCDline(y+4,x-8,y+1,x-8,color);
        LCDline(y+4,x-4,y+2,x-4,color);
    }
    else if(charin == 'G' || charin == 'g')
    {
        LCDline(y+2,x-8,y+4,x-8,color);
        LCDline(y+5,x-7,y+5,x-2,color);
        LCDline(y+2,x-1,y+4,x-1,color);
        LCDline(y+1,x-7,y+1,x-7,color);
        LCDline(y+1,x-2,y+1,x-2,color);
        LCDline(y+2,x-3,y+1,x-3,color);
    }
    else if(charin == 'H' || charin == 'h')
    {
        LCDverticalline(y+5,x-8,7,color);
        LCDverticalline(y+1,x-8,7,color);
        LCDline(y+4,x-4,y+2,x-4,color);
    }
    else if(charin == 'I' || charin == 'i')
    {
        LCDline(y+5,x-8,y+1,x-8,color);
        LCDline(y+5,x-1,y+1,x-1,color);
        LCDverticalline(y+3,x-8,7,color);
    }
    else if(charin == 'J' || charin == 'j')
    {
        LCDline(y+3,x-8,y+2,x-8,color);
        LCDline(y+2,x-7,y+2,x-2,color);
        LCDline(y+3,x-1,y+4,x-1,color);
        LCDline(y+5,x-2,y+5,x-2,color);
    }
    else if(charin == 'K' || charin == 'k')
    {
        LCDverticalline(y+5,x-8,7,color);
        LCDline(y+4,x-4,y+1,x-8,color);
        LCDline(y+4,x-4,y+1,x-1,color);
    }
    else if(charin == 'L' || charin == 'l')
    {
        LCDverticalline(y+5,x-8,7,color);
        LCDline(y+5,x-1,y+1,x-1,color);
    }
    else if(charin == 'M' || charin == 'm')
    {
        LCDverticalline(y+5,x-8,7,color);
        LCDverticalline(y+1,x-8,7,color);
        LCDline(y+5,x-8,y+3,x-5,color);
        LCDline(y+1,x-8,y+3,x-5,color);
    }
    else if(charin == 'N' || charin == 'n')
    {
        LCDverticalline(y+5,x-8,7,color);
        LCDverticalline(y+1,x-8,7,color);
        LCDline(y+5,x-8,y+1,x-1,color);
    }
    else if(charin == 'O' || charin == 'o')
    {
        LCDline(y+5,x-2,y+5,x-7,color);
        LCDline(y+1,x-2,y+1,x-7,color);
        LCDline(y+4,x-8,y+2,x-8,color);
        LCDline(y+4,x-1,y+2,x-1,color);
    }
    else if(charin == 'P' || charin == 'p')
    {
        LCDverticalline(y+5,x-8,7,color);
        LCDline(y+4,x-8,y+2,x-8,color);
        LCDline(y+4,x-5,y+2,x-5,color);
        LCDline(y+1,x-6,y+1,x-7,color);
    }
    else if(charin == 'Q' || charin == 'q')
    {
        LCDline(y+5,x-2,y+5,x-7,color);
        LCDline(y+1,x-2,y+1,x-7,color);
        LCDline(y+4,x-8,y+2,x-8,color);
        LCDline(y+4,x-1,y+2,x-1,color);
        LCDline(y+2,x-2,y+1,x-1,color);
    }
    else if(charin == 'R' || charin == 'r')
    {
        LCDverticalline(y+5,x-8,7,color);
        LCDline(y+4,x-8,y+2,x-8,color);
        LCDline(y+4,x-5,y+2,x-5,color);
        LCDline(y+1,x-6,y+1,x-8,color);
        LCDline(y+1,x-4,y+1,x-1,color);
    }
    else if(charin == 'S' || charin == 's')
    {
        LCDline(y+2,x-8,y+4,x-8,color);
        LCDline(y+2,x-4,y+4,x-4,color);
        LCDline(y+2,x-1,y+4,x-1,color);
        LCDline(y+5,x-7,y+5,x-5,color);
        LCDline(y+1,x-3,y+1,x-2,color);
    }
    else if(charin == 'T' || charin == 't')
    {
        LCDline(y+5,x-8,y+1,x-8,color);
        LCDverticalline(y+3,x-8,7,color);
    }
    else if(charin == 'U' || charin == 'u')
    {
        LCDverticalline(y+5,x-8,6,color);
        LCDline(y+4,x-1,y+2,x-1,color);
        LCDverticalline(y+1,x-8,6,color);
    }
    else if(charin == 'V' || charin == 'v')
    {
        LCDline(y+5,x-8,y+3,x-1,color);
        LCDline(y+1,x-8,y+3,x-1,color);
    }
    else if(charin == 'W' || charin == 'w')
    {
        LCDverticalline(y+5,x-8,7,color);
        LCDverticalline(y+1,x-8,7,color);
        LCDline(y+4,x-2,y+3,x-3,color);
        LCDline(y+2,x-2,y+3,x-3,color);
    }
    else if(charin == 'X' || charin == 'x')
    {
        LCDline(y+5,x-8,y+1,x-1,color);
        LCDline(y+1,x-8,y+5,x-1,color);
    }
    else if(charin == 'Y' || charin == 'y')
    {
        LCDline(y+5,x-8,y+3,x-4,color);
        LCDline(y+1,x-8,y+3,x-4,color);
        LCDline(y+3,x-4,y+3,x-1,color);
    }
    else if(charin == 'Z' || charin == 'z')
    {
        LCDline(y+5,x-8,y+1,x-8,color);
        LCDline(y+5,x-1,y+1,x-1,color);
        LCDline(y+1,x-8,y+5,x-1,color);
    }
    else if(charin == '0')
    {
        LCDverticalline(y+5,x-7,5,color);
        LCDverticalline(y+1,x-7,5,color);
        LCDline(y+4,x-8,y+2,x-8,color);
        LCDline(y+4,x-1,y+2,x-1,color);
        LCDline(y+3,x-5,y+3,x-4,color);
    }
     else if(charin == '1')
    {
        LCDline(y+4,x-8,y+3,x-8,color);
        LCDverticalline(y+3,x-8,7,color);
        LCDline(y+4,x-1,y+2,x-1,color);
    }
    else if(charin == '2')
    {
        LCDline(y+5,x-7,y+5,x-7,color);
        LCDline(y+4,x-8,y+2,x-8,color);
        LCDline(y+1,x-7,y+1,x-5,color);
        LCDline(y+2,x-4,y+5,x-1,color);
        LCDline(y+4,x-1,y+1,x-1,color);
    }
    else if(charin == '3')
    {
        LCDline(y+5,x-8,y+2,x-8,color);
        LCDline(y+5,x-4,y+2,x-4,color);
        LCDline(y+5,x-1,y+2,x-1,color);
        LCDline(y+1,x-7,y+1,x-5,color);
        LCDline(y+1,x-3,y+1,x-2,color);
    }
    else if(charin == '4')
    {
        LCDline(y+1,x-8,y+1,x-1,color);
        LCDline(y+5,x-7,y+5,x-4,color);
        LCDline(y+4,x-4,y+2,x-4,color);
    }
    else if(charin == '5')
    {
        LCDline(y+1,x-8,y+5,x-8,color);
        LCDline(y+2,x-5,y+4,x-5,color);
        LCDline(y+2,x-1,y+5,x-1,color);
        LCDline(y+5,x-7,y+5,x-5,color);
        LCDline(y+1,x-4,y+1,x-2,color);
    }
    else if(charin == '6')
    {
        LCDline(y+1,x-3,y+1,x-2,color);
        LCDline(y+5,x-2,y+5,x-7,color);
        LCDline(y+4,x-8,y+2,x-8,color);
        LCDline(y+4,x-4,y+2,x-4,color);
        LCDline(y+4,x-1,y+2,x-1,color);
        LCDline(y+1,x-7,y+1,x-7,color);
    }
    else if(charin == '7')
    {
        LCDline(y+5,x-8,y+1,x-8,color);
        LCDline(y+1,x-8,y+1,x-1,color);
    }
    else if(charin == '8')
    {
        LCDline(y+2,x-8,y+4,x-8,color);
        LCDline(y+2,x-4,y+4,x-4,color);
        LCDline(y+2,x-1,y+4,x-1,color);
        LCDline(y+5,x-7,y+5,x-5,color);
        LCDline(y+1,x-3,y+1,x-2,color);
        LCDline(y+1,x-7,y+1,x-5,color);
        LCDline(y+5,x-3,y+5,x-2,color);

    }
    else if(charin == '9')
    {
        LCDline(y+2,x-8,y+4,x-8,color);
        LCDline(y+2,x-4,y+4,x-4,color);
        LCDline(y+2,x-1,y+4,x-1,color);
        LCDline(y+5,x-7,y+5,x-5,color);
        LCDline(y+1,x-7,y+1,x-2,color);
    }
    else if(charin == '.')
    {
        LCDline(y+3,x-1,y+3,x-1,color);
    }
    else
    {
        LCDline(y+5,x-1,y+1,x-1,color);
    }
}

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

void LCDcolor(unsigned short pixel);

void LCDmayo()
{
    unsigned char i,j;
    unsigned short pixel;
    unsigned char hpixel[3];
    unsigned char *hdata;

    S6B33_rect(0, 0, 131, 131); /* display is really 132x132 */

    hdata = (unsigned char *)mayo_data;

    for (i=0; i<132; i++) {
       for (j=0; j<132; j++) {
            MAYO_PIXEL(hdata, hpixel);
            pixel = (unsigned short)(
                     ( ((hpixel[0] >> 3) &  0b11111)  << 11) | 
                     ( ((hpixel[1] >> 3) &  0b11111)  <<  6) | /* normalize-ish palette different */
//                     ( ((hpixel[1] >> 2) & 0b111111)  <<  5) |
                     ( ((hpixel[2] >> 3) &  0b11111)       )
                    );
            S6B33_pixel(pixel);
       }
    }
}

void LCDdrbob()
{
    unsigned char i,j;
    unsigned short pixel;
    unsigned char hpixel[3];
    unsigned char *hdata;

    S6B33_rect(0, 0, 131, 131); /* display is really 132x132 */

    hdata = (unsigned char *)drbob_data;

    for (i=0; i<132; i++) {
       for (j=0; j<132; j++) {
            DRBOB_PIXEL(hdata, hpixel);
            pixel = (unsigned short)(
                     ( ((hpixel[0] >> 3) &  0b11111)  << 11) | 
                     ( ((hpixel[1] >> 3) &  0b11111)  <<  6) | /* normalize-ish palette different */
//                     ( ((hpixel[1] >> 2) & 0b111111)  <<  5) |
                     ( ((hpixel[2] >> 3) &  0b11111)       )
                    );
            S6B33_pixel(pixel);
       }
    }
}

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


