enum {
//    MAYO=1,
//    DRBOB=0,
    HACKRVA=0,
//    RVASEC,
    RVASEC2,
    HACKRVA2,
    MARIO,
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
