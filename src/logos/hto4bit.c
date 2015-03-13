#include <stdio.h>


/*
 cc -o hto4bit hto4bit.c hackrva.h 
*/


/*
#include "hackrva.h"

#define CMAP() hackrva_data_cmap
#define PIXEL() hackrva_data

#define OUTNAME "hackoutrva"
*/

#include "rvasec.h"

#define CMAP() rvasec_data_cmap
#define PIXEL() rvasec_data

#define OUTNAME "rvasec"

main() {
    int r, c;


    fprintf(stdout, "static unsigned int width = %d;\n", width);
    fprintf(stdout, "static unsigned int height = %d;\n", height);

    /* output header */
    fprintf(stdout, "#define %s_data_cmap[16][3] = {\n", OUTNAME);
    for (r=0; r<16; r++) {
        fprintf(stdout, "{ %d, %d, %d }\n", 
                (unsigned char)CMAP()[r][0],
                (unsigned char)CMAP()[r][1],
                (unsigned char)CMAP()[r][3]);
	};
    fprintf(stdout, "}\n");

    fprintf(stdout, "static char %s_data[] = {\n", OUTNAME);
    for (r=0; r<height; r++) {
        for (c=0; c<width; c+=2) {
            //fprintf(stdout, "%d,", ((unsigned char)(PIXEL()[r*c]) >> 4) );
            fprintf(stdout, "%02x,", 
                (unsigned char)(((PIXEL()[r*width+c]) << 4) | (unsigned char)(PIXEL()[r*width+c+1]) ));
        }
        fprintf(stdout, "\n");
    }
    fprintf(stdout, "}\n");

}
