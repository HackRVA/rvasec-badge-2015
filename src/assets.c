#include "plib.h"
#include "S6B33.h"
#include "drbob.h"
#include "mayo.h"


#define PIXEL(CMAP, DATA)           \
   (unsigned short)(                \
	  ( ((CMAP[DATA[0]][0] >> 3) & 0b11111) << 11 ) |     \
	  ( ((CMAP[DATA[0]][1] >> 3) & 0b11111) <<  6 ) |     \
	  ( ((CMAP[DATA[0]][2] >> 3) & 0b11111)       )       \
   )       \

void LCDmayo()
{
    unsigned char i,j;
    unsigned short pixel;
    unsigned char *mayo_data_ptr ;

    mayo_data_ptr = mayo_data;

    S6B33_rect(0, 0, 131, 131); /* display is really 132x132 */

    for (i=0; i<132; i++) {
       for (j=0; j<132; j++) {
            pixel = PIXEL(mayo_data_cmap, mayo_data_ptr) ;
            mayo_data_ptr++;
            S6B33_pixel(pixel);
       }
    }
}

void LCDdrbob()
{
    unsigned char i,j;
    unsigned short pixel;
    unsigned char *drbob_data_ptr ;

    drbob_data_ptr = drbob_data;

    S6B33_rect(0, 0, 131, 131); /* display is really 132x132 */

    for (i=0; i<132; i++) {
       for (j=0; j<132; j++) {
            pixel = PIXEL(drbob_data_cmap, drbob_data_ptr) ;
            drbob_data_ptr++;
            S6B33_pixel(pixel);
       }
    }
}


