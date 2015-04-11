#include "assetList.h"
#include "assets.h"

#include "drbob.h"         // 14% Program
//#include "mayo.h"
#include "rvasec4bit.h"    // 7% Program
#include "hackrva4bit.h"   // 7% Program
#include "rvasec2bit.h"    // 3% Program
#include "hackrva1bit.xbm" // 2% Program
                      
#include "mario.h"         // 1% Program
#include "got.h"         // 1% Program
#include "font_2.xbm"         // 1% Program
#include "kitten.h"
#include "chip.h"
#include "chipsprite.h"

/* for 1 bit images */
/* testing color instead of BW */
const static char BW_cmap[2][3] = {
{ 0, 0, 0 },
{ 64, 192, 64 },
};

/*
   all pixels should fill a whole byte and be evenly divided.
   1 bit/pixel image has a min width of 8 bits 
   2 bits/pixel = 4 bit wide min. 
   4 bits/pixel = 2 bit wide min.

 NOTE
 NOTE   if you add or remove an item ALSO add or remove it in the enum in assetList.h 
 NOTE

*/
const struct asset assetList[] = {
    { DRBOB, drbob_width, drbob_height, (const char *)drbob_data_cmap, (const char *)drbob_data, (drawLCD8) },
    { HACKRVA, hackrva4_width, hackrva4_height, (const char *)hackrva4_data_cmap, (const char *)hackrva4_data, (drawLCD4) },
    { RVASEC, rvasec_width, rvasec_height, (const char *)rvasec_data_cmap, (const char *)rvasec_data, (drawLCD4) },
    { RVASEC2, rvasec2_width, rvasec2_height, (const char *)rvasec2_data_cmap, (const char *)rvasec2_data, (drawLCD2) },
    { HACKRVA2, 88, 48, (const char *)BW_cmap, (const char *)hackrva_bits, (drawLCD1) },
    { MARIO, marioSamples, 0, (const char *)marioDuration, (const char *)marioOfftime, (nextNote_cb) },
    { GAMEOTHRONES, gameOfThronesSamples, 0, (const char *)gameOfThrones, (const char *)0, (nextMIDI_cb) },
    { FONT, 8, 336, (const char *)BW_cmap, (const char *)font_2_bits, (drawLCD1) },
    { CHIP, chip_width, chip_height, (const char *)chip_data_cmap, (const char *)chip_data, (drawLCD8) },
    { KITTEN, kitten_width, kitten_height, (const char *)kitten_data_cmap, (const char *)kitten_data, (drawLCD8) },
    { CHIPSPRITE, chipsprite_width, chipsprite_height, (const char *)chipsprite_data_cmap, (const char *)chipsprite_data, (drawLCD8) }
};

