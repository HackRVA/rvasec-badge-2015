#include "badge_common.h"
#include "badge15.h"
#include "touchCTMU.h"
#include "time_date.h"
#include "assetList.h"

//------------------------------LCD COLORS-------------------------------------

#define BLUE 0b0000000000011111
#define GREEN 0b0000011111100000
#define RED 0b1111100000000000
#define WHITE 0b1111111111111111
#define BLACK 0b0000000000000000

//-------------------------------END COLORS------------------------------------



unsigned char badge_date[8];
unsigned char badge_date_set[8];
unsigned char badge_time[6];
unsigned char badge_time_set[6];
unsigned char badge_time_last;

//-------------------------------END STATES------------------------------------

badge_state b_state;//badge state structure
display_list display;//display list structure
ResourceType resource;//enumerator for display resource type

#ifdef STATES

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
            day1();
            break;
        case DAY2:
            day2();
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
        case DATE_TIME:
            date_time();
            break;
        case DATE_TIME_:
            date_time_d();
            break;
        case GAME_2048:
            game_2048_Run();
            break;
        default:
            main_menu();

    }
}

/*****************************[MAIN MENU STATE]*******************************
 *    Add links to all new states under the games or settings menu           *
 *****************************************************************************/

void main_menu(void){

    update_badge_time();

    do_touch(4);

    unsigned short selected[4];//menue items selection array

    clear_selected(selected, 4);

    selected[b_state.selected_object] = RED; // this outlines the selected one in red

    if(b_state.state_drawn == 0){//this draws the menu on first entry or if selection has changed
        clearscreen(BLACK);
        drawMenu(selected, 4);
        writeline("Schedule",    8,  44, 23, GREEN);
        writeline("Games",       5,  51, 42, GREEN);
        writeline("Settings",    8,  44, 61, GREEN);
        writeline("Achievments", 11, 37, 80, GREEN);
        writeline(badge_time, 6, 50, 99, GREEN);
        writeline(badge_date, 8, 44, 118, GREEN);
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
        on_exit();
        b_state.previous_state = MAIN;
    }


}

void update_badge_time(void){

    badge_time_last = badge_time[4];

    getTime_Date(badge_time, badge_date);

    if(badge_time_last == badge_time[4])
    {
        return;
    }
    else{
        clear_display_list();
        b_state.state_drawn=0;
    }
}

/***************************[SCHEDULE MENU STATE]*****************************
 *    Add links to all new states under the games or settings menu           *
 *****************************************************************************/

void schedule_menu(void){


    do_touch(4);

    unsigned short selected[4];

    clear_selected(selected, 4);

    selected[b_state.selected_object] = RED;

    if(b_state.state_drawn == 0){
        clearscreen(BLACK);
        drawMenu(selected, 3);
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
        on_exit();
        b_state.previous_state = SCHEDULE;
    }
}

/***************************[SETTINGS MENU STATE]*****************************
 *    Add links to apps that change or manage functionality here             *
 *****************************************************************************/

void settings_menu(void){

    do_touch(6);

    unsigned short selected[6];

    clear_selected(selected, 6);

    selected[b_state.selected_object] = RED;

    if(b_state.state_drawn == 0){
        clearscreen(BLACK);
        drawMenu(selected, 6);
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
                b_state.current_state = DATE_TIME;
                b_state.counter1 = 0;
                break;
            case 4:
                break;
            case 5:
                b_state.current_state = b_state.previous_state;
                break;
            default:
                break;
        }
        on_exit();
        b_state.previous_state = SETTINGS;
    }
}

/*****************************[GAME MENU STATE]*******************************
 *    Add links to all new states under the games or settings menu           *
 *****************************************************************************/

void game_menu(void){

    do_touch(6);

    unsigned short selected[6];

    clear_selected(selected, 6);

    selected[b_state.selected_object] = RED;

    if(b_state.state_drawn == 0){
        clearscreen(BLACK);
        drawMenu(selected, 6);
        writeline("2048",8,  60, 23,  GREEN);
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
                game_2048_Init();
                b_state.current_state = GAME_2048;
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
        //on_exit();
        b_state.previous_state = GAMES;
    }
}


/*****************************[SCHEDULE STATE]********************************
 *    Contains schedule for confrence miniature self contained state machine *
 *****************************************************************************/

void day1(void){
    
    do_touch(6);

    unsigned short selected[6];

    clear_selected(selected, 6);

    selected[b_state.selected_object] = RED;
    
    switch(b_state.counter1){

        case 0:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("8:00 9:00AM",11,  37, 23,  GREEN);
                writeline("Breakfast",   9,  42, 42,  GREEN);
                writeline("9:00 9:10AM",11,  37, 61,  GREEN);
                writeline("Welcome",     7,  47, 80,  GREEN);
                writeline("next",        4,  55, 99,  GREEN);
                writeline("menu",        4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 1:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("9:10 10:10AM", 12,  35, 23,  GREEN);
                writeline("David Kennedy",13,  33, 42,  GREEN);
                writeline("10:10 10:30AM",13,  33, 61,  GREEN);
                writeline("Break",         5,  52, 80,  GREEN);
                writeline("next",          4,  55, 99,  GREEN);
                writeline("menu",          4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 2:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("10:30 10:40AM",13,  33, 23,  GREEN);
                writeline("Nick-Steve",   10,  40, 42,  GREEN);
                writeline("10:40 10:50AM",13,  33, 61,  GREEN);
                writeline("Paul-Morgan",  11,  37, 80,  GREEN);
                writeline("next",          4,  55, 99,  GREEN);
                writeline("menu",          4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 3:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("10:50 11:00AM",13,  33, 23,  GREEN);
                writeline("Break",         5,  53, 42,  GREEN);
                writeline("11:00 12:00PM",13,  33, 61,  GREEN);
                writeline("Welcome",       7,  47, 80,  GREEN);
                writeline("next",          4,  55, 99,  GREEN);
                writeline("menu",          4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 4:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("12:00 1:00PM",12,  35, 23,  GREEN);
                writeline("Lunch",        5,  53, 42,  GREEN);
                writeline("1:00 1:50PM", 11,  37, 61,  GREEN);
                writeline("Ben Tomchune",12,  35, 80,  GREEN);
                writeline("next",         4,  55, 99,  GREEN);
                writeline("menu",         4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 5:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("1:50 2:00PM", 11,  37, 23,  GREEN);
                writeline("Break",        5,  53, 42,  GREEN);
                writeline("2:00 2:50PM", 11,  37, 61,  GREEN);
                writeline("Brian Baskin",12,  35, 80,  GREEN);
                writeline("next",         4,  55, 99,  GREEN);
                writeline("menu",         4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 6:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("2:50 3:00PM",11,  37, 23,  GREEN);
                writeline("Break",       5,  53, 42,  GREEN);
                writeline("3:00 3:50PM",11,  37, 61,  GREEN);
                writeline("Inga Goddin",11,  37, 80,  GREEN);
                writeline("next",        4,  55, 99,  GREEN);
                writeline("menu",        4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 7:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("3:50 4:00PM", 11,  37, 23,  GREEN);
                writeline("Break",        5,  53, 42,  GREEN);
                writeline("4:00 4:50PM", 11,  37, 61,  GREEN);
                writeline("Seth Hanford",12,  35, 80,  GREEN);
                writeline("next",         4,  55, 99,  GREEN);
                writeline("menu",         4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 8:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("4:50 5:00PM",  11,  37, 23,  GREEN);
                writeline("Break",         5,  53, 42,  GREEN);
                writeline("5:00 5:50PM",  11,  37, 61,  GREEN);
                writeline("Schyler Towne",13,  33, 80,  GREEN);
                writeline("next",          4,  55, 99,  GREEN);
                writeline("menu",          4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 9:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("5:50 6:00PM",11,  37, 23,  GREEN);
                writeline("Closing",     7,  47, 42,  GREEN);
                writeline("6:30 8:00PM",11,  37, 61,  GREEN);
                writeline("After Party",11,  37, 80,  GREEN);
                writeline("start",       5,  53, 99,  GREEN);
                writeline("menu",        4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
    }
    
}


void day2(void){

    do_touch(6);

    unsigned short selected[6];

    clear_selected(selected, 6);

    selected[b_state.selected_object] = RED;

    switch(b_state.counter1){

        case 0:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("6:00 8:00AM", 11,  37,  23,  GREEN);
                writeline("Registration",12,  35,  42,  GREEN);
                writeline("8:00 8:50AM", 11,  37,  61,  GREEN);
                writeline("Breakfast",    9,  42,  80,  GREEN);
                writeline("next",         4,  55,  99,  GREEN);
                writeline("menu",         4,  55, 118,  GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 1:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("8:50 9:00AM", 11,  37, 23,  GREEN);
                writeline("Welcome",      7,  47, 42,  GREEN);
                writeline("9:00 10:00AM",12,  35, 61,  GREEN);
                writeline("Gene Fishel", 11,  37, 80,  GREEN);
                writeline("next",         4,  55, 99,  GREEN);
                writeline("menu",         4,  55,118,  GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 2:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("10:00 10:10AM",13,  33, 23,  GREEN);
                writeline("Break",         5,  53, 42,  GREEN);
                writeline("10:10 11:00AM",13,  33, 61,  GREEN);
                writeline("Evan Booth",   10,  40, 80,  GREEN);
                writeline("next",          4,  55, 99,  GREEN);
                writeline("menu",          4,  55,118,  GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 3:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("11:00 11:10AM",   13,  33, 23,  GREEN);
                writeline("Break",            5,  53, 42,  GREEN);
                writeline("11:10 12:00PM",   13,  33, 61,  GREEN);
                writeline("Jonathan Dambrot",16,  25, 80,  GREEN);
                writeline("next",             4,  55, 99,  GREEN);
                writeline("menu",             4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 4:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("12:00 1:00PM",   12,  35, 23,  GREEN);
                writeline("Lunch",           5,  53, 42,  GREEN);
                writeline("1:00 1:50PM",    11,  37, 61,  GREEN);
                writeline("Carmrn-Kimberly",15,  27, 80,  GREEN);
                writeline("next",            4,  55, 99,  GREEN);
                writeline("menu",            4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 5:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("1:50 2:00PM",  11,  37, 23,  GREEN);
                writeline("Break",         5,  53, 42,  GREEN);
                writeline("2:00 2:50PM",  11,  37, 61,  GREEN);
                writeline("Dan-Elizabeth",13,  33, 80,  GREEN);
                writeline("next",          4,  55, 99,  GREEN);
                writeline("menu",          4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 6:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("2:50 3:10PM",    11,  37, 23,  GREEN);
                writeline("Break",           5,  53, 42,  GREEN);
                writeline("3:10 4:00PM",    11,  37, 61,  GREEN);
                writeline("David-Katherine",15,  27, 80,  GREEN);
                writeline("next",            4,  55, 99,  GREEN);
                writeline("menu",            4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 7:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("4:00 4:10PM", 11,  37, 23,  GREEN);
                writeline("Break",        5,  53, 42,  GREEN);
                writeline("4:10 5:00PM", 11,  37, 61,  GREEN);
                writeline("Pete Herzog", 11,  35, 80,  GREEN);
                writeline("next",         4,  55, 99,  GREEN);
                writeline("menu",         4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
        case 8:
                if(b_state.state_drawn == 0){
                clearscreen(BLACK);
                drawMenu(selected, 6);
                writeline("5:00 6:30PM",11,  37, 23,  GREEN);
                writeline("Reception",   9,  37, 42,  GREEN);
                writeline("See you at", 10,  35, 61,  GREEN);
                writeline("RVASec 2016",11,  33, 80,  GREEN);
                writeline("start",       5,  52, 99,  GREEN);
                writeline("menu",        4,  55, 118, GREEN);
                b_state.state_drawn = 1;
            }

            schedule_click();
            break;
    }

}

void schedule_click(void){
    if(click == 0  && display.new_item == 0)
            {
                click = 1;
                switch(b_state.selected_object){
                    case 4:
                        if(b_state.current_state == DAY1 &&
                                b_state.counter1 == 9)
                        {
                            b_state.counter1 = 0;
                        }
                        else if(b_state.current_state == DAY2 &&
                                b_state.counter1 == 8)
                        {
                            b_state.counter1 = 0;
                        }
                        else{
                            b_state.counter1++;
                        }
                        break;
                    case 5:
                        b_state.current_state = SCHEDULE;
                        b_state.counter1 = 0;
                        break;
                    default:
                        break;
                }
                on_exit();
                b_state.previous_state = MAIN;
            }
}

/********************************END SCHEDULE*********************************/




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
        on_exit();
        b_state.previous_state = ACHIEVMENTS;
    }
}

void date_time(void){

    do_touch(6);

    unsigned short selected[6];
    clear_selected(selected,6);
    selected[b_state.selected_object] = RED;

    if(b_state.state_drawn == 0){
        clearscreen(BLACK);
        rectangle(10,11,108,15, GREEN);
        writeline("time", 4, 56, 23,GREEN);

        rectangle(10,49, 20, 15, selected[0]);//0
        printchar((badge_time_set[0]), 23,61,GREEN);

        rectangle(39,49, 20, 15, selected[1]);//0
        printchar((badge_time_set[1]), 52,61,GREEN);

        printchar(':',66, 61,GREEN);//:

        rectangle(68,49, 20, 15, selected[2]);//0
        printchar((badge_time_set[3]), 81,61,GREEN);

        rectangle(97,49, 20, 15, selected[3]);//0
        printchar((badge_time_set[4]),110,61,GREEN);

        rectangle(39,68, 49, 15, selected[4]);//AM-PM
        switch(badge_time_set[5]){
            case 'A':
                writeline("AM", 2, 61, 80, GREEN);
                break;
            default:
                writeline("PM", 2, 61, 80, GREEN);
                break;
        }

        rectangle(39,106, 49, 15, selected[5]);
        writeline("NEXT", 4, 56, 118, GREEN);
        b_state.state_drawn = 1;
    }

    if(click == 0  && display.new_item == 0){
        click = 1;
        switch(b_state.selected_object){
            case 0:
                if(badge_time_set[0] == '1')
                    badge_time_set[0] = '0';
                else
                    badge_time_set[0]++;
                break;
            case 1:
                if(badge_time_set[1] == '9')
                    badge_time_set[1] = '0';
                else
                    badge_time_set[1]++;
                break;
            case 2:
                if(badge_time_set[3] == '5')
                    badge_time_set[3] = '0';
                else
                    badge_time_set[3]++;
                break;
            case 3:
                if(badge_time_set[4] == '9')
                    badge_time_set[4] = '0';
                else
                    badge_time_set[4]++;
                break;
            case 4:
                if(badge_time_set[5] == 'P')
                    badge_time_set[5] = 'A';
                else
                    badge_time_set[5] = 'P';
                break;
            case 5:
                b_state.current_state = DATE_TIME_;
                on_exit();
                break;
        }
        clear_display_list();
        b_state.state_drawn = 0;
    }
}

void date_time_d(void){

    unsigned short selected[7];

    do_touch(7);

    clear_selected(selected,7);

    selected[b_state.selected_object] = RED;
    
    if(b_state.state_drawn == 0){
            clearscreen(BLACK);
            rectangle(10,11,108,15, GREEN);
            writeline("date",   4, 56, 23, GREEN);

            rectangle(10,30, 49,15, GREEN);
            writeline("Month:", 6, 20, 42, GREEN);

            rectangle(68,30, 20, 15, selected[0]);//m
            printchar((badge_date_set[0]), 81,42,GREEN);

            rectangle(97,30, 20, 15, selected[1]);//m
            printchar((badge_date_set[1]),110,42,GREEN);


            rectangle(10,49, 49,15, GREEN);
            writeline("Day:", 4, 20, 61, GREEN);

            rectangle(68,49, 20, 15, selected[2]);//m
            printchar((badge_date_set[3]), 81,61,GREEN);

            rectangle(97,49, 20, 15, selected[3]);//m
            printchar((badge_date_set[4]),110,61,GREEN);


            rectangle(10,68, 49,15, GREEN);
            writeline("Year:", 5, 20, 80, GREEN);

            rectangle(68,68, 20, 15, selected[4]);//m
            printchar((badge_date_set[6]), 81,80,GREEN);

            rectangle(97,68, 20, 15, selected[5]);//m
            printchar((badge_date_set[7]),110,80,GREEN);

            //setup date menu/rectangles here
            rectangle(10,106,108,15, selected[6]);
            writeline("save", 4,  55, 118, GREEN);

            b_state.state_drawn = 1;
    }

    if(click == 0  && display.new_item == 0){
        click = 1;
        switch(b_state.selected_object){
            case 0:
                if(badge_date_set[0] == '1')
                    badge_date_set[0] = '0';
                else
                    badge_date_set[0]++;
                break;
            case 1:
                if(badge_date_set[1] == '9')
                    badge_date_set[1] = '0';
                else
                    badge_date_set[1]++;
                break;
            case 2:
                if(badge_date_set[3] == '9')
                    badge_date_set[3] = '0';
                else
                    badge_date_set[3]++;
                break;
            case 3:
                if(badge_date_set[4] == '9')
                    badge_date_set[4] = '0';
                else
                    badge_date_set[4]++;
                break;
            case 4:
                if(badge_date_set[6] == '9')
                    badge_date_set[6] = '0';
                else
                    badge_date_set[6]++;
                break;
            case 5:
                if(badge_date_set[7] == '9')
                    badge_date_set[7] = '0';
                else
                    badge_date_set[7]++;
                break;
            case 6:
                setTime_Date(badge_time_set,badge_date_set);
                b_state.current_state = SETTINGS;
                b_state.previous_state = MAIN;
                on_exit();
                break;
        }
        clear_display_list();
        b_state.state_drawn = 0;
    }
}

/***********************[MENU FUNCTIONS USE CAREFULLY]*************************
 *        Functions used to emplement functionality of the menu system        *
 ******************************************************************************/

void on_exit(void){
    clear_display_list();
    b_state.state_drawn = 0;
    b_state.selected_object = 0;
    b_state.counter1 = 0;
    b_state.counter2 = 0;
}

void do_touch(unsigned char menuSize){
    if(touchStat > 3)//Edit this when integrating ::TOUCH::
    {
        touchStat = 0;//Edit this when integrating ::TOUCH::
        clear_display_list();
        if(b_state.selected_object == (menuSize-1))
            b_state.selected_object = 0;
        else
            b_state.selected_object++;

        b_state.state_drawn = 0;
    }
}

void drawMenu(unsigned short * selected, unsigned char menuSize){
    rectangle(10,11, 108,15, selected[0]);
    if(menuSize > 1)
        rectangle(10,30, 108,15, selected[1]);
    if(menuSize > 2)
        rectangle(10,49, 108,15, selected[2]);
    if(menuSize > 3)
        rectangle(10,68, 108,15, selected[3]);
    if(menuSize > 4)
        rectangle(10,87, 108,15, selected[4]);
    if(menuSize > 5)
        rectangle(10,106,108,15, selected[5]);
}

void clear_selected(unsigned short * selected, unsigned char menuSize){
    selected[0] = GREEN;
    if(menuSize > 1)
        selected[1] = GREEN;
    if(menuSize > 2)
        selected[2] = GREEN;
    if(menuSize > 3)
        selected[3] = GREEN;
    if(menuSize > 4)
        selected[4] = GREEN;
    if(menuSize > 5)
        selected[5] = GREEN;
    if(menuSize > 6)
        selected[6] = GREEN;
    if(menuSize > 7)
        selected[7] = GREEN;
}
/***************************[END MENU FUNCTIONS]******************************/


#endif
/**************************[STATE INITIALIZATION]*****************************
 *    Called only once during start up to provide entry point                *
 *****************************************************************************/

void init_states(void){

   b_state.previous_state = MAIN;
   b_state.current_state = MAIN;
   b_state.state_drawn = 0;
   b_state.selected_object = 0;
   b_state.counter1 = 0;
   b_state.counter2 = 0;

   badge_time_set[0] = '0';
   badge_time_set[1] = '0';
   badge_time_set[2] = ':';
   badge_time_set[3] = '0';
   badge_time_set[4] = '0';
   badge_time_set[5] = 'A';

   badge_date_set[0] = '0';
   badge_date_set[1] = '0';
   badge_date_set[2] = '-';
   badge_date_set[3] = '0';
   badge_date_set[4] = '0';
   badge_date_set[5] = '-';
   badge_date_set[6] = '0';
   badge_date_set[7] = '0';
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
    for(display.queue_counter=0;display.queue_counter<150;display.queue_counter++){
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

    if(display.queue_counter == 149)
        display.queue_counter = 0;
    else
        display.queue_counter++;

    display.new_item = 3;
}

void writeline(unsigned char * charin, unsigned char no_of_chars, unsigned char x, unsigned char y, unsigned short color)
{
    if(y<10)
        y=10;

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

void filled_rectangle(unsigned char x,
                      unsigned char y,
                      unsigned char width,
                      unsigned char height,
                      unsigned short color)
{
    add_to_display_list(FILLED_RECTANGLE, color, x, y, width, height);
}

void show_pic(unsigned char picId,
              unsigned char x,
              unsigned char y)
{
    add_to_display_list(PIC, picId, x, y, 0, 0);
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
    clear_display_list();
    add_to_display_list(BACKGROUND, colorbg, 0, 0, 0, 0);
}

void setbackground(unsigned short colorbg)
{
    add_to_display_list(BACKGROUND, colorbg, 0, 0, 0, 0);
}

void clear_display_list(void)
{
     for(display.queue_counter=0;display.queue_counter<150;display.queue_counter++)
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
    for(display.queue_reader=0;display.queue_reader<150;display.queue_reader++){

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
            else if(display.composite_queue[display.queue_reader][0] == FILLED_RECTANGLE){

                if(display.scan_line >= display.composite_queue[display.queue_reader][3] &&
                   display.scan_line <= (display.composite_queue[display.queue_reader][3]
                   + display.composite_queue[display.queue_reader][5]))
                {
                    LCDFilledRectangleScan(display.composite_queue[display.queue_reader][2],
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
#ifndef NEWCHARFUNCT
//   void LCDCharacterScan(unsigned char y,//Hard coded font. Scans
//	   unsigned char x,              //Calls scan line function for
//	   unsigned char charin,         //character values
//	   unsigned char lineCurrent,
//	   unsigned short color)

                    LCDCharacterScan(display.composite_queue[display.queue_reader][3],
                                     display.composite_queue[display.queue_reader][2],
                                     display.composite_queue[display.queue_reader][4],
                                     display.scan_line,
                                     display.composite_color[display.queue_reader]);//x,y,charin,lineCurrent,color


#else
//void scanCharLCD1(unsigned char assetId,
//              unsigned char y,
//              unsigned char x,
//              unsigned char lineCurrent,
//              unsigned char charin,
//              unsigned short color,
//              unsigned char font_height)

                    scanCharLCD1(FONT,
			display.composite_queue[display.queue_reader][3],
                        display.composite_queue[display.queue_reader][2],

                        display.scan_line,
                        display.composite_queue[display.queue_reader][4],

                        display.composite_color[display.queue_reader],
                        8
                   );
#endif
                }

            }
            else if(display.composite_queue[display.queue_reader][0] == PIC){
                scanLCD8(display.composite_queue[display.queue_reader][1],
                         display.composite_queue[display.queue_reader][2],
                         display.composite_queue[display.queue_reader][3],
                         display.scan_line);
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
