#ifndef TOUCH_CTMU_H

#define TOUCH_CTMU_H

#define TOUCH_BUTTON_THRESHOLD 12000

extern short int CurrentButtonStatus;

/* button numbering */
#define LEFT_SLIDER 0     /* bottom left */
#define RIGHT_SLIDER 1    /* bottom right */
#define TOP_SLIDER 2      /* right side of badge top */
#define BOTTOM_SLIDER 3   /* right side of badge bottom */
#define BUTTON 4   /* physical button */

/* bit masks */
#define LEFT_SLIDER_MASK    (1 << LEFT_SLIDER)   // 0b00001,
#define RIGHT_SLIDER_MASK   (1 << RIGHT_SLIDER)  // 0b00010,
#define TOP_SLIDER_MASK     (1 << TOP_SLIDER)    // 0b00100,
#define BOTTOM_SLIDER_MASK  (1 << BOTTOM_SLIDER) // 0b01000,
#define BUTTON_MASK  (1 << BUTTON)   // 0b10000,

#endif
