#ifndef assetList_h
#define assetList_h


/*
 NOTE
 NOTE   LASTASSET has to be the LAST item in the enum 
 NOTE   insert new enums before it.
 NOTE
*/
enum {
    DRBOB=0,
    HACKRVA,
    RVASEC,
    RVASEC2,
    HACKRVA2,
    MARIO,
    GAMEOTHRONES,
    FONT,
    CHIP,
    BOWLBALL,
    KITTEN,
    SPLASH,
    CHIPSPRITE,
    LASTASSET,
};

struct asset {
    unsigned char assetId;
    unsigned short x;
    unsigned short y;
    char *data_cmap;
    char *pixdata;
    void (*datacb)(unsigned char, int);
};
extern const struct asset assetList[];
#endif
