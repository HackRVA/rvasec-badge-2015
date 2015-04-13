/* 
 * File:   badge14.h
 * Author: morgan
 *
 * Created on March 28, 2014, 8:24 PM
 */

/* in case this gets included more than once */
#ifndef badge15_h
#define badge15_h

#include <stdlib.h>
#include "touchCTMU.h"
#include "assets.h"
#include "assetList.h"
#include "time_date.h"
#include "menu.h"
#include "timer1_int.h"
#include "LCDcolor.h"
#include "composite.h"
#include "S6B33.h"

#define uCHAR (unsigned char *)

#define BLUE  0b0000000000011111
#define GREEN 0b0000011111100000
#define RED   0b1111100000000000
#define WHITE 0b1111111111111111
#define BLACK 0b0000000000000000

unsigned char touchStat;//remove when touch is properly implemented
int click;//remove when button is really implemented


/******************************************************************************/
/***************************[Badge State Machine]******************************/
/******************************************************************************/
//---------------ALL STATES ON DEVICE-ADD NEW STATES TO END--------------------

enum states{
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
 ACHIEVMENTS,
 DATE_TIME,
 DATE_TIME_,
 GAME_2048
};

typedef struct badge_state{//structure that controls state flow

     unsigned char current_state;//used by run_states to determine current badge state
     unsigned char previous_state;//used to return to previous state
     unsigned char selected_object;//counter for choosing options in states
     unsigned char state_drawn;//used to redraw state on change in selected object
     unsigned char counter1;
     unsigned char counter2;
     unsigned short large_counter;
}badge_state;

void run_states(void);//case statement that controls badge state

void main_menu(void);//displays main menu provides links to sub menus

void schedule_menu(void);//menu for schedule days

void settings_menu(void);//menu for various system settings and functions

void game_menu(void);//menu of games &| entertainment applications

void init_states(void);//initializes states at badge start

void unlocked_achievments(void);//shows unlocked achievments

void day1(void);//first day's schedule

void day2(void);//second day's schedule

void drawMenu(unsigned short * selected, unsigned char menuSize);

void do_touch(unsigned char menuSize);

void schedule_click(void);

void on_exit(void);

void date_time(void);

void date_time_(void);

/******************************************************************************/
/****************************[End State Machine]*******************************/
/******************************************************************************/




/******************************************************************************/
/**********************[Display Programmer Interface]**************************/
/******************************************************************************/

typedef enum ResourceType {//this is used to indicate type of graphics resource
    LINE,                  //for the display_list as used in functions
    RECTANGLE,
    CHARACTER,
    PIC,
    BACKGROUND,
    FILLED_RECTANGLE,
    SPRITE
}ResourceType;

typedef struct display_list{//this structure contains the display list and its counters
    unsigned char queue_counter;
    unsigned char queue_reader;
    unsigned char composite_queue[150][6];
    unsigned short composite_color[150];
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

void show_pic(unsigned char picId,
              unsigned char x,
              unsigned char y);

void filled_rectangle(unsigned char x,
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
#endif
