/* 
 * File:   badge14.h
 * Author: morgan
 *
 * Created on March 28, 2014, 8:24 PM
 */

#include "badge_common.h"
#include "touchCTMU.h"

typedef struct badge_state{

     unsigned char current_state;
     unsigned char previous_state;
     unsigned char selected_object;
     unsigned char button_state_last;
     unsigned char state_drawn;

}badge_state;

typedef enum state{
        MAIN,
        SCHEDULE,
        SETTINGS,
        GAMES,
        DAY1,
        DAY2,
        LED,
        CONTRAST,
        SPEAKER,
        SET_TIME,
        SCREENSAVER,
        SCREENSAVER_ON,

}state;

void main_menu(void);

void schedule_menu(void);

void settings_menu(void);

void game_menu(void);

void init_states(void);


/******************************************************************************/
/**********************[Display Programmer Interface]**************************/
/******************************************************************************/

typedef enum ResourceType {//this is used to indicate type of graphics resource
    LINE,                  //for the display_list as used in functions
    RECTANGLE,
    CHARACTER,
    PIC,
    BACKGROUND,
}ResourceType;

typedef struct display_list{//this structure contains the display list and its counters
    unsigned char queue_counter;
    unsigned char queue_reader;
    unsigned char composite_queue[100][6];
    unsigned short composite_color[100];
    unsigned char lineReady;
    unsigned char scan_line;
    unsigned char new_item;
}display_list;

void init_display_list(void);//call this function to initialize or reset the display list

void add_to_display_list(unsigned char ResourceType,//this function can be used directly
        unsigned short color_picID,                  //but it is recommended that you use
        unsigned char x1,                           //the provided convenience functions below
        unsigned char y1,
        unsigned char x2_width_charVal,
        unsigned char y2_height);

void writeline(unsigned char * charin,//writes a string of text to the display list
        unsigned char no_of_chars,
        unsigned char x,
        unsigned char y,
        unsigned short color);

void printchar(unsigned char Character,//writes a character to the display list
        unsigned char x,
        unsigned char y,
        unsigned short color);

void rectangle(unsigned char x,//draws a rectangle to the display list
        unsigned char y,
        unsigned char width,
        unsigned char height,
        unsigned short color);

void line(unsigned char x1,//draws a line to the display list and decides
        unsigned char y1,  //which line function to use based on coordinates
        unsigned char x2,
        unsigned char y2,
        unsigned short color);

void clearscreen(unsigned short color);//clears the screan and fills it with a color

/******************************************************************************/
/**************************[End Display Interface]*****************************/
/******************************************************************************/



/*************************[LCD COMPOSITE FUNCTIONS]****************************/
void LCDComposite(void);//this function retrieves the next queued item in the
                        //display list and compoisites it to the screen

void LCDCompositeLine(void);//writes display list to current scan line
/******************************************************************************/