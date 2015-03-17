#include "assetList.h"
#include "assets.h"

#include "drbob.h"
//#include "mayo.h"
#include "rvasec4bit.h"
#include "hackrva4bit.h"
#include "rvasec2bit.h"
#include "hackrva1bit.xbm"

#include "mario.h"

/* for 1 bit images */
/* testing color instead of BW */
const static char BW_cmap[16][3] = {
{ 0, 0, 0 },
{ 64, 192, 64 },
};

/*
   all pixels should fill a whole byte and be evenly divided.
   1 bit/pixel image has a min width of 8 bits 
   2 bits/pixel = 4 bit wide min. 
   4 bits/pixel = 2 bit wide min.
*/
const struct asset assetList[] = {
    //{ MAYO, 132, 132, (const char **)mayo_data_cmap, (const char *)mayo_data, (void)(*drawLCD) },
//    { MAYO, 132, 132, (const char **)mayo_data_cmap, (const char *)mayo_data, (*drawLCD)},

    { DRBOB, drbob_width, drbob_height, (const char *)drbob_data_cmap, (const char *)drbob_data, (drawLCD8) },
    { HACKRVA, hackrva4_width, hackrva4_height, (const char *)hackrva4_data_cmap, (const char *)hackrva4_data, (drawLCD4) },
//    { RVASEC, rvasec_width, rvasec_height, (const char *)rvasec_data_cmap, (const char *)rvasec_data, (drawLCD4) },
    { RVASEC2, rvasec2_width, rvasec2_height, (const char *)rvasec2_data_cmap, (const char *)rvasec2_data, (drawLCD2) },
    { HACKRVA2, 88, 48, (const char *)BW_cmap, (const char *)hackrva_bits, (drawLCD1) },
    { MARIO, marioSamples, 0, (const char *)marioDuration, (const char *)marioOfftime, (nextNote_cb) },
};

