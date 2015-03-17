#include "badge_common.h"
#include "badge15.h"
#include "touchCTMU.h"

//------------------------------LCD COLORS-------------------------------------

#define BLUE 0b0000000000011111
#define GREEN 0b0000011111100000
#define RED 0b1111100000000000
#define WHITE 0b1111111111111111
#define BLACK 0b0000000000000000

//-------------------------------END COLORS------------------------------------

//---------------ALL STATES ON DEVICE-ADD NEW STATES TO END--------------------
#define MAIN 0
#define SCHEDULE 1
#define SETTINGS 2
#define GAMES 3
#define DAY1 4
#define DAY2 5
#define LED 6
#define CONTRAST 7
#define SPEAKER 8
#define SET_TIME 9
#define SCREENSAVER 10
#define SCREENSAVER_ON 11
#define ACHIEVMENTS 12
//-------------------------------END STATES------------------------------------

badge_state b_state;//badge state structure
display_list display;//display list structure
ResourceType resource;//enumerator for display resource type

/***********************[CASE STATE MACHINE FOR BADGE]************************
 *      Add new states at the end inside run_states() function               *
 *****************************************************************************/

void run_states(void){
    switch(b_state.current_state){
        case MAIN:
            main_menu();
            break;
        case SCHEDULE:
            schedule_menu();
            break;
        case SETTINGS:
            settings_menu();
            break;
        case GAMES:
            game_menu();
            break;
        case DAY1:
            break;
        case DAY2:
            break;
        case LED:
            break;
        case CONTRAST:
            break;
        case SPEAKER:
            break;
        case SET_TIME:
            break;
        case SCREENSAVER:
            break;
        case SCREENSAVER_ON:
            break;
        case ACHIEVMENTS:
            unlocked_achievments();
            break;
    }
}

/*****************************[MAIN MENU STATE]*******************************
 *    Add links to all new states under the games or settings menu           *
 *****************************************************************************/

void main_menu(void){

    if(touchStat > 3)//Edit this when integrating ::TOUCH:: this if statement scrolls through menu
    {
        touchStat = 0;
        clear_display_list();
        if(b_state.selected_object == 3)
            b_state.selected_object = 0;
        else
            b_state.selected_object++;

        b_state.state_drawn = 0;
    }

    unsigned short selected[4];//menue items selection array

    selected[0] = GREEN;//  This sets
    selected[1] = GREEN;//  all of the
    selected[2] = GREEN;//  menu items to
    selected[3] = GREEN;//  the color green

    selected[b_state.selected_object] = RED; // this outlines the selected one in red

    if(b_state.state_drawn == 0){//this draws the menu on first entry or if selection has changed
        clearscreen(BLACK);
        rectangle(10,11,108,15, selected[0]);
        rectangle(10,30,108,15, selected[1]);
        rectangle(10,49,108,15, selected[2]);
        rectangle(10,68,108,15, selected[3]);
        writeline("Schedule",    8,  44, 23, GREEN);
        writeline("Games",       5,  51, 42, GREEN);
        writeline("Settings",    8,  44, 61, GREEN);
        writeline("Achievments", 11, 37, 80, GREEN);
        b_state.state_drawn = 1;
    }

    if(click == 0 && display.new_item == 0)//enters a new state on button click
    {
        click = 1;
        switch(b_state.selected_object){
            case 0:
                b_state.current_state = SCHEDULE;
                break;
            case 1:
                b_state.current_state = GAMES;
                break;
            case 2:
                b_state.current_state = SETTINGS;
                break;
            case 3:
                b_state.current_state = ACHIEVMENTS;
                break;
            default:
                break;
        }
                clear_display_list();
                b_state.previous_state = MAIN;
                b_state.state_drawn = 0;
                b_state.selected_object = 0;
    }
}


/***************************[SCHEDULE MENU STATE]*****************************
 *    Add links to all new states under the games or settings menu           *
 *****************************************************************************/

void schedule_menu(void){


    if(touchStat > 3)//Edit this when integrating ::TOUCH::
    {
        touchStat = 0;//Edit this when integrating ::TOUCH::
        clear_display_list();
        if(b_state.selected_object == 3)
            b_state.selected_object = 0;
        else
            b_state.selected_object++;

        b_state.state_drawn = 0;
    }

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
        writeline("day1", 4,  55, 23, GREEN);
        writeline("day2", 4,  55, 42, GREEN);
        writeline("back", 4,  55, 61, GREEN);
        b_state.state_drawn = 1;
    }

    if(click == 0  && display.new_item == 0)
    {
        click = 1;
        switch(b_state.selected_object){
            case 0:
                b_state.current_state = DAY1;
                break;
            case 1:
                b_state.current_state = DAY2;
                break;
            case 2:
                b_state.current_state = b_state.previous_state;
                break;
            default:
                break;
        }
        clear_display_list();
        b_state.previous_state = SCHEDULE;
        b_state.state_drawn = 0;
        b_state.selected_object = 0;
    }
}

/***************************[SETTINGS MENU STATE]*****************************
 *    Add links to apps that change or manage functionality here             *
 *****************************************************************************/

void settings_menu(void){

    if(touchStat > 3)//Edit this when integrating ::TOUCH::
    {
        touchStat = 0;//Edit this when integrating ::TOUCH::
        clear_display_list();
        if(b_state.selected_object == 5)
            b_state.selected_object = 0;
        else
            b_state.selected_object++;

        b_state.state_drawn = 0;
    }

    unsigned short selected[6];

    selected[0] = GREEN;
    selected[1] = GREEN;
    selected[2] = GREEN;
    selected[3] = GREEN;
    selected[4] = GREEN;
    selected[5] = GREEN;

    selected[b_state.selected_object] = RED;

    if(b_state.state_drawn == 0){
        clearscreen(BLACK);
        rectangle(10,11, 108,15, selected[0]);
        rectangle(10,30, 108,15, selected[1]);
        rectangle(10,49, 108,15, selected[2]);
        rectangle(10,68, 108,15, selected[3]);
        rectangle(10,87, 108,15, selected[4]);
        rectangle(10,106,108,15, selected[5]);
        writeline("led",        3,  57, 23,  GREEN);
        writeline("contrast",   8,  44, 42,  GREEN);
        writeline("speaker",    7,  47, 61,  GREEN);
        writeline("time_date",  9,  42, 80,  GREEN);
        writeline("screensaver",11, 37, 99,  GREEN);
        writeline("back",       4,  55, 118, GREEN);
        b_state.state_drawn = 1;
    }

    if(click == 0  && display.new_item == 0)
    {
        click = 1;
        switch(b_state.selected_object){
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                b_state.current_state = b_state.previous_state;
                break;
            default:
                break;
        }
        clear_display_list();
        b_state.previous_state = SETTINGS;
        b_state.state_drawn = 0;
        b_state.selected_object = 0;
    }
}

/*****************************[GAME MENU STATE]*******************************
 *    Add links to all new states under the games or settings menu           *
 *****************************************************************************/

void game_menu(void){

    if(touchStat > 3)//Edit this when integrating ::TOUCH::
    {
        touchStat = 0;//Edit this when integrating ::TOUCH::
        clear_display_list();
        if(b_state.selected_object == 5)
            b_state.selected_object = 0;
        else
            b_state.selected_object++;

        b_state.state_drawn = 0;
    }

    unsigned short selected[6];

    selected[0] = GREEN;
    selected[1] = GREEN;
    selected[2] = GREEN;
    selected[3] = GREEN;
    selected[4] = GREEN;
    selected[5] = GREEN;

    selected[b_state.selected_object] = RED;

    if(b_state.state_drawn == 0){
        clearscreen(BLACK);
        rectangle(10,11, 108,15, selected[0]);
        rectangle(10,30, 108,15, selected[1]);
        rectangle(10,49, 108,15, selected[2]);
        rectangle(10,68, 108,15, selected[3]);
        rectangle(10,87, 108,15, selected[4]);
        rectangle(10,106,108,15, selected[5]);
        writeline("Firewall",8,  44, 23,  GREEN);
        writeline("Bowling", 7,  47, 42,  GREEN);
        writeline("Hacker",  6,  50, 61,  GREEN);
        writeline("Aliens",  6,  50, 80,  GREEN);
        writeline("More",    4,  55, 99,  GREEN);
        writeline("back",    4,  55, 118, GREEN);
        b_state.state_drawn = 1;
    }

    if(click == 0  && display.new_item == 0)
    {
        click = 1;
        switch(b_state.selected_object){
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                b_state.current_state = b_state.previous_state;
                break;
            default:
                break;
        }
        clear_display_list();
        b_state.previous_state = GAMES;
        b_state.state_drawn = 0;
        b_state.selected_object = 0;
    }
}

void unlocked_achievments(void){

    if(b_state.state_drawn == 0){
        clearscreen(BLACK);
        writeline("Locked",  6,  50, 23,  RED);
        writeline("Locked",  6,  50, 42,  RED);
        writeline("Locked",  6,  50, 61,  RED);
        writeline("Locked",  6,  50, 80,  RED);
        writeline("Locked",  6,  50, 99,  RED);
        writeline("Locked",  6,  50, 118, RED);
        b_state.state_drawn = 1;
    }

    if(click == 0  && display.new_item == 0 )
    {
        click = 1;
        b_state.current_state = b_state.previous_state;
        clear_display_list();
        b_state.previous_state = ACHIEVMENTS;
        b_state.state_drawn = 0;
        b_state.selected_object = 0;
    }
}

/**************************[STATE INITIALIZATION]*****************************
 *    Called only once during start up to provide entry point                *
 *****************************************************************************/

void init_states(void){
   b_state.previous_state = MAIN;
   b_state.current_state = MAIN;
   b_state.state_drawn = 0;
   b_state.selected_object = 0;
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
//display_list display;
//ResourceType resource;

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

    display.new_item = 3;
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
    if (display.new_item > 0);
    {
        switch(display.lineReady){
            case 1:
                if(LCDSend_bucket())
                {
                    display.lineReady = 0;
                    if(display.scan_line == 131){
                        display.scan_line = 0;
                        display.new_item--;
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
    if(display.new_item > 0){
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