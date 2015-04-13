#ifndef composite_h
#define composite_h

/* 
   LCD item types are stored in displayList.dData.data
*/
enum {
    LCD_UNUSED=0,		/* unused */
    LCD_CLEAR,			/* reset LCD */
    LCD_BACKGROUND_COLOR,	/* 16 bit background fill color */
    LCD_COLOR,			/* 16 bit color */
    LCD_TRANSPARENT_COLOR,	/* 16 bit transparent/key/mask color */
    LCD_MOVE, 			/* (x 8bit, y 8bit) where the next stuff goes */
    LCD_AUX,			/* auxilary info (x 8bit, y 8bit) mainly for font */
    LCD_SPAN,			/* fill w color from last x -> this.x span  */
    LCD_FONT_SPAN,		/* 8 pixels/byte- fill w font data from last x -> this.x span using aux.x, aux.y  */
    LCD_PICTURE_SPAN,		/* 4 pixel/byte- fill w pic data from last x -> this.x span using aux.x, aux.y  */
};

/* display data is either color or position data */ 
union displayData_u {
   unsigned short data; /* 16 bit data color, picture ID, font ID etc. */
   struct {
      unsigned char x;  /* 8 bit data: position */
      unsigned char y;
   } pos ;
} ;

struct vector_t {
   unsigned char x;
   unsigned char y;
};

struct displayItem_t {
   unsigned char type;
   union displayData_u dData;
};

/*
   2 bytes per element * MAXDISPLAYLIST
   2 * 4096 = 8k
*/
#define MAXDISPLAYLIST 4096
struct displayList_t {
   unsigned short currItem; /* 16 bit */
   unsigned short color;  /* cache color */

   struct vector_t pos; /* pos info for building LCD functions */
   struct vector_t aux; /* aux info for doing LCD functions */

   struct displayItem_t displayList[MAXDISPLAYLIST];
};

#endif
