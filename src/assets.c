#include "S6B33.h"
#include "assets.h"
#include "assetList.h"

void drawAsset(unsigned char assetId)
{
    assetList[assetId].datacb(assetId, 0);
}

void drawLCD1(unsigned char assetId, int frame)
{
    unsigned char i, j, p, r, g, b, pixbyte, *cmap, *pixdata;
    unsigned short pixel ;

    S6B33_rect(0, 0, assetList[assetId].y - 1, assetList[assetId].x - 1);

    pixdata = &(assetList[assetId].pixdata[0]);
    for (i=0; i < assetList[assetId].y; i++) {
       for (j=0; j < assetList[assetId].x/8; j++ ) { // 8 pixels at a ime
            pixbyte = *pixdata++; /* 8 pixels per byte */

            for (p=0; p<8; p++) {
                // 1st pixel
                //cmap = &(assetList[assetId].data_cmap[(unsigned short)((pixbyte>>(7-p)) & 0x1) * 3]);
                cmap = &(assetList[assetId].data_cmap[(unsigned short)((pixbyte>>p) & 0x1) * 3]);
                r = cmap[0];
                g = cmap[1];
                b = cmap[2];

                pixel = ( ( ((r >> 3) & 0b11111) << 11 ) |
                          ( ((g >> 3) & 0b11111) <<  6 ) |
                          ( ((b >> 3) & 0b11111)       )) ;

                S6B33_pixel(pixel);
            }
       }
    }
}

void drawLCD2(unsigned char assetId, int frame)
{
    unsigned char i, j, r, g, b, pixbyte, *cmap, *pixdata;
    unsigned short pixel ;

    S6B33_rect(0, 0, assetList[assetId].x - 1, assetList[assetId].y - 1);

    pixdata = &(assetList[assetId].pixdata[0]);
    for (i=0; i < assetList[assetId].y; i++) {
       for (j=0; j < assetList[assetId].x/4; j++ ) { // 4 pixels at a ime
            pixbyte = *pixdata++; /* 2 pixels per byte */

            // 1st pixel
            cmap = &(assetList[assetId].data_cmap[(unsigned short)((pixbyte>>6) & 0x3) * 3]);
            r = cmap[0];
            g = cmap[1];
            b = cmap[2];

            pixel = ( ( ((r >> 3) & 0b11111) << 11 ) |
                      ( ((g >> 3) & 0b11111) <<  6 ) |
                      ( ((b >> 3) & 0b11111)       )) ;

            S6B33_pixel(pixel);

            // 2nd pixel
            cmap = &(assetList[assetId].data_cmap[(unsigned short)((pixbyte>>4) & 0x3) * 3]);
            r = cmap[0];
            g = cmap[1];
            b = cmap[2];

            pixel = ( ( ((r >> 3) & 0b11111) << 11 ) |
                      ( ((g >> 3) & 0b11111) <<  6 ) |
                      ( ((b >> 3) & 0b11111)       )) ;

            S6B33_pixel(pixel);

            // 3rd pixel
            cmap = &(assetList[assetId].data_cmap[(unsigned short)((pixbyte>>2) & 0x3) * 3]);
            r = cmap[0];
            g = cmap[1];
            b = cmap[2];

            pixel = ( ( ((r >> 3) & 0b11111) << 11 ) |
                      ( ((g >> 3) & 0b11111) <<  6 ) |
                      ( ((b >> 3) & 0b11111)       )) ;

            S6B33_pixel(pixel);

            // 2nd pixel
            cmap = &(assetList[assetId].data_cmap[(unsigned short)(pixbyte & 0x3) * 3]);
            r = cmap[0];
            g = cmap[1];
            b = cmap[2];

            pixel = ( ( ((r >> 3) & 0b11111) << 11 ) |
                      ( ((g >> 3) & 0b11111) <<  6 ) |
                      ( ((b >> 3) & 0b11111)       )) ;

            S6B33_pixel(pixel);
       }
    }
}

void drawLCD4(unsigned char assetId, int frame)
{
    unsigned char i, j, r, g, b, pixbyte, *cmap, *pixdata;
    unsigned short pixel ;

    S6B33_rect(0, 0, assetList[assetId].x - 1, assetList[assetId].y - 1);

    pixdata = &(assetList[assetId].pixdata[0]);
    for (i=0; i < assetList[assetId].y; i++) {
       for (j=0; j < assetList[assetId].x/2; j++ ) { // 2 pixels at a ime
            pixbyte = *pixdata++; /* 2 pixels per byte */

            // 1st pixel
            cmap = &(assetList[assetId].data_cmap[(unsigned short)(pixbyte>>4) * 3]);
            r = cmap[0];
            g = cmap[1];
            b = cmap[2];

            pixel = ( ( ((r >> 3) & 0b11111) << 11 ) |
                      ( ((g >> 3) & 0b11111) <<  6 ) |
                      ( ((b >> 3) & 0b11111)       )) ;

            S6B33_pixel(pixel);

            // 2nd pixel
            cmap = &(assetList[assetId].data_cmap[(unsigned short)(pixbyte & 0xF) * 3]);
            r = cmap[0];
            g = cmap[1];
            b = cmap[2];

            pixel = ( ( ((r >> 3) & 0b11111) << 11 ) |
                      ( ((g >> 3) & 0b11111) <<  6 ) |
                      ( ((b >> 3) & 0b11111)       )) ;

            S6B33_pixel(pixel);
       }
    }
}

void drawLCD8(unsigned char assetId, int frame)
{
    unsigned char i, j, r, g, b, pixbyte, *cmap;
    unsigned short pixel;

    S6B33_rect(0, 0, assetList[assetId].x - 1, assetList[assetId].y - 1);

    for (i=0; i < assetList[assetId].y; i++) {
       for (j=0; j < assetList[assetId].x; j++) {
            pixbyte = assetList[assetId].pixdata[i * assetList[assetId].x + j];
            cmap = &(assetList[assetId].data_cmap[(unsigned short)pixbyte * 3]);
            r = cmap[0];
            g = cmap[1];
            b = cmap[2];

            pixel = ( ( ((r >> 3) & 0b11111) << 11 ) |
                      ( ((g >> 3) & 0b11111) <<  6 ) |
                      ( ((b >> 3) & 0b11111)       )) ;

            S6B33_pixel(pixel);
       }
    }
}


