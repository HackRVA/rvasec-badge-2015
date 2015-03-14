#include "badge_common.h"
#include "badge15.h"
#include "touchCTMU.h"

#define BLUE 0b0000000000011111
#define GREEN 0b0000011111100000
#define RED 0b1111100000000000
#define WHITE 0b1111111111111111
#define BLACK 0b0000000000000000

//typedef enum state{
//        MAIN,
//        SCHEDULE,
//        SETTINGS,
//        GAMES,
//        DAY1,
//        DAY2,
//        LED,
//        CONTRAST,
//        SPEAKER,
//        SET_TIME,
//        SCREENSAVER,
//        SCREENSAVER_ON,
//
//}state;

state set_state;
badge_state b_state;

void main_menu(void){
    //Schedule2343234453
    //Games
    //Settings

    //Date
    //Time
    unsigned short selected[4];

    selected[0] = GREEN;
    selected[1] = GREEN;
    selected[2] = GREEN;
    selected[3] = GREEN;

    selected[b_state.selected_object] = RED;

    if(b_state.state_drawn == 0){
        clearscreen(BLACK);
        rectangle(10,11,108,15, selected[0]);
        rectangle(10,30,108,15, selected[1]);
        rectangle(10,49,108,15, selected[2]);
        rectangle(10,68,108,15, selected[3]);
        writeline("Schedule", 8, 44, 23, GREEN);
        writeline("Games", 5, 51, 42, GREEN);
        writeline("Settings", 8, 44, 61, GREEN);
        writeline("Achievments", 11, 37, 80, GREEN);
        b_state.state_drawn = 1;
    }

}

void schedule_menu(void){
    //Day 1
    //Day 2
    //Back
    //Main
}

void settings_menu(void){
    //LED
    //Contrast
    //Speaker
    //Set Time
    //Screen Saver
    //Screen Saver On
}

void game_menu(void){
    //need stuff here
}

void init_states(void){
   b_state.state_drawn = 0;
   b_state.selected_object = 2;
}



//#include "schedule.h"
//#include "./Stages15/SpriteMaker.h"

/**********************[Display Programmer Interface]**************************
*                                                                             *
*                        IMPORTANT NOTES FROM HEADER                          *
*                                                                             *
* typedef enum ResourceType {          ****************************           *
*    LINE,          [0]                * SEE HEADER FOR USE NOTES *           *
*    RECTANGLE,     [1]                ****************************           *
*    CHARACTER,     [2]                                                       *
*    PIC,           [3]                                                       *
*    BACKGROUND,    [4]                                                       *
* }ResourceType;                                                              *
*                                                                             *
* typedef struct display_list{                                                *
*    unsigned char queue_counter;                                             *
*    unsigned char queue_reader;                                              *
*    unsigned char scan_line;                                                 *
*    unsigned char lineReady;                                                 *
*    unsigned char new_item;                                                  *
*    unsigned char composite_queue[100][6];                                   *
* }display_list;                                                              *
*                                                                             *                                                                *
*******************************************************************************/
display_list display;

ResourceType resource;

void init_display_list(void)
{
    LCDinit_scan();
    for(display.queue_counter=0;display.queue_counter<100;display.queue_counter++){
         display.composite_color[display.queue_counter] = 7;
        for(display.queue_reader=0;display.queue_reader<6;display.queue_reader++){
            display.composite_queue[display.queue_counter][display.queue_reader] = 7;
        }
    }
    display.queue_counter = 0;
    display.queue_reader = 0;
    display.scan_line = 0;
}

void add_to_display_list(unsigned char ResourceType,
        unsigned short color_picID,
        unsigned char x1,
        unsigned char y1,
        unsigned char x2_width_charVal,
        unsigned char y2_height)
{
    display.composite_queue[display.queue_counter][0] = ResourceType;
    display.composite_queue[display.queue_counter][1] = color_picID;
    display.composite_queue[display.queue_counter][2] = x1;
    display.composite_queue[display.queue_counter][3] = y1;
    display.composite_queue[display.queue_counter][4] = x2_width_charVal;
    display.composite_queue[display.queue_counter][5] = y2_height;
    display.composite_color[display.queue_counter] = color_picID;

    if(display.queue_counter == 99)
        display.queue_counter = 0;
    else
        display.queue_counter++;

    display.new_item = 1;
}

void writeline(unsigned char * charin, unsigned char no_of_chars, unsigned char x, unsigned char y, unsigned short color)
{
    if(y<15)
        y=15;

    unsigned char j;
    if(no_of_chars > 22)
        no_of_chars = 22;

    for(j=0;j<no_of_chars;j++)
    {
        add_to_display_list(CHARACTER, color, x+(j*6), y, charin[j], 0);
    }
}

void printchar(unsigned char charin,
               unsigned char x,
               unsigned char y,
               unsigned short color)
{
    add_to_display_list(CHARACTER, color, x, y, charin, 0);
}

void rectangle(unsigned char x,
               unsigned char y,
               unsigned char width,
               unsigned char height,
               unsigned short color)
{
    add_to_display_list(RECTANGLE, color, x, y, width, height);
}

void line(unsigned char x1,
          unsigned char y1,
          unsigned char x2,
          unsigned char y2,
          unsigned short color)
{
        add_to_display_list(LINE, color, x1, y1, x2, y2);
}

void clearscreen(unsigned short colorbg)
{
    add_to_display_list(BACKGROUND, colorbg, 0, 0, 0, 0);
}

void clear_display_list(void)
{
     for(display.queue_counter=0;display.queue_counter<100;display.queue_counter++)
        for(display.queue_reader=0;display.queue_reader<6;display.queue_reader++)
            display.composite_queue[display.queue_counter][display.queue_reader] = 7;

    display.queue_counter = 0;
    display.queue_reader = 0;
}
/**************************[End Display Interface]*****************************/



/*************************[Compositing Functions]******************************/
void LCDComposite(void)
{
    if (display.new_item == 1);
    {
        switch(display.lineReady){
            case 1:
                if(LCDSend_bucket())
                {
                    display.lineReady = 0;
                    if(display.scan_line == 131){
                        display.scan_line = 0;
                        display.new_item = 0;
                    }
                    else{
                        display.scan_line++;
                    }
                }
                break;
            default:
                break;
        }
    }
}

void LCDCompositeLine(void)
{
    if(display.new_item == 1){
    for(display.queue_reader=0;display.queue_reader<100;display.queue_reader++){

        if(display.composite_queue[display.queue_reader][0] != 7){

           if(display.composite_queue[display.queue_reader][0] == LINE){

                if(display.scan_line <= display.composite_queue[display.queue_reader][5] &&
                   display.scan_line >= display.composite_queue[display.queue_reader][3])
                {
                    LCDlineScan(display.composite_queue[display.queue_reader][2],
                                display.composite_queue[display.queue_reader][3],
                                display.composite_queue[display.queue_reader][4],
                                display.composite_queue[display.queue_reader][5],
                                display.scan_line,
                                display.composite_color[display.queue_reader]);
                }

            }
            else if(display.composite_queue[display.queue_reader][0] == RECTANGLE){

                if(display.scan_line >= display.composite_queue[display.queue_reader][3] &&
                   display.scan_line <= (display.composite_queue[display.queue_reader][3]
                   + display.composite_queue[display.queue_reader][5]))
                {
                    LCDrectangleScan(display.composite_queue[display.queue_reader][2],
                                     display.composite_queue[display.queue_reader][3],
                                     display.composite_queue[display.queue_reader][4],
                                     display.composite_queue[display.queue_reader][5],
                                     display.scan_line,
                                     display.composite_color[display.queue_reader]);
                }

            }
            else if(display.composite_queue[display.queue_reader][0] == CHARACTER){

                if(abs(display.scan_line - display.composite_queue[display.queue_reader][3]) < 8)
                {
                    LCDCharacterScan(display.composite_queue[display.queue_reader][3],
                                     display.composite_queue[display.queue_reader][2],
                                     display.composite_queue[display.queue_reader][4],
                                     display.scan_line,
                                     display.composite_color[display.queue_reader]);//x,y,charin,lineCurrent,color
                }

            }
            else if(display.composite_queue[display.queue_reader][0] == PIC){
                //Later
            }     
            else if(display.composite_queue[display.queue_reader][0] == BACKGROUND){
                    LCDBackgroundScan(display.composite_color[display.queue_reader]);
            }
            else{}
    
        }
    }

    display.lineReady = 1;
    }
}
/***********************[End Compositing Functions]****************************/