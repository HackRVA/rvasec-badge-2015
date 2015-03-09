/* 
 * File:   badge14.h
 * Author: morgan
 *
 * Created on March 28, 2014, 8:24 PM
 */

#include "badge_common.h"

#define CONSTRUCT_PROTO(state_name) \
    void* construct_##state_name##15(struct BadgeState *b_state)

#define HANDLER_PROTO(state_name) \
    void* state_name##15(struct BadgeState *b_state)

#define HANDLER_REF(state_name) \
    state_name##15

#define ON_ENTER_PROTO(state_name) \
    void* state_name##15_onEnter(struct BadgeState *b_state)

#define ON_EXIT_PROTO(state_name) \
    void* state_name##15_onExit(struct BadgeState *b_state)

#define DECLARE_BASE_STATE(state_name) \
    CONSTRUCT_PROTO(state_name);\
    HANDLER_PROTO(state_name);\
    ON_ENTER_PROTO(state_name);\
    ON_EXIT_PROTO(state_name);

#define BASIC_CONSTRUCT(state_name)\
    initBadgeState(b_state);\
    b_state->state_handler = state_name##15;\
    b_state->onEnter       = state_name##15_onEnter;\
    b_state->onExit        = state_name##15_onExit;


#define BUTTON_IS_PRESSED__CONSUME \
    button_pressed == 250 && (button_pressed++)

#define BUTTON_IS_PRESSED\
    button_pressed == 250

struct pix_buff main_buff, bird_idle_buff;


unsigned char btm_size, side_size;
//unsigned char pix[504];

unsigned char button_pressed, button_cnt, button_used;

#define DEBOUNCE 1
#define NUM_IMAGE_ASSETS 1
struct image screen_images[NUM_IMAGE_ASSETS];

//all this memory just for dynamic image switch times


// touch states
struct TouchState
{
    char lr_swipe;
    char bt_swipe;

    //lower values are physicallly lefter
    char lower_loc;

    unsigned char lower_slider_left;
    unsigned char lower_slider_right;

    //lower values are...(physically) lower
    char side_loc;

    unsigned char side_slider_left;
    unsigned char side_slider_right;
};

#define BROADCAST_LIMIT
static unsigned char broadcast[];

//small queue, it would be nice to make this a linked list, but wtf do I know
#define QUEUE_SIZE 4
struct Queue
{
    unsigned char q_size;

    unsigned char vals[QUEUE_SIZE];
};

//would be nice to make this more easily resizeable
struct TouchQueue
{
    //if this reaches good debounce, consider pressed, look at front for loc
    char bottom_hold_count, side_hold_count;

    // pointer-fy?
    struct TouchState front;
    struct TouchState mid_f;
    struct TouchState mid_b;
    struct TouchState back;
};

//b_rtccTime tm;
//b_rtccDate dt;

struct BadgeState
{
    b_rtccTime tm;
    b_rtccDate dt;

    //create a linked list type structure, should allow use to build some
    //complex sequences with limited global var use
    struct BadgeState *next_state;//, *back_state;

    //what function should be handed this state
    void* (*state_handler)(struct BadgeState* b_state);

    //what function should be handed this state when switch state is called
    //void* (*next_state_handler)(struct BadgeState* b_state);
    
    //Function called when state is being entered (2015)
    void (*onEnter)(struct BadgeState* b_state);

    //Function called when state is being exited (2015)
    void (*onExit)(struct BadgeState* b_state);

    //states may have different uses for the sliders
    void* (*slide_handler)(struct TouchQueue *t_queue);
    //void* (*slide_handler)(struct TouchState *t_state);

    void* (*ir_handler)(struct BadgeState* b_state);

    struct Queue ir_incoming, ir_outgoing;

    unsigned int ir_recvd_msg;
    
    struct TouchQueue slide_states;
   // struct Queue slide_states;

    struct pix_buff buff;

    unsigned char leds;

    unsigned char counter_1;
    unsigned char counter_2;
    unsigned int big_counter;
    unsigned int big_counter_1;
};

struct menu_entry
{
    char *text;
    struct BadgeState *state_entry;// = 0;
    struct menu_page *menu_entry;// = 0;
};

struct menu_page
{
    unsigned char num_entries;
    unsigned char selected;
    struct menu_entry **entries;
    void* (*extra_func)(struct BadgeState *b_state);
};

//States
struct BadgeState snake_state, sketch_state, manual_contrast_state,
                    bird_state, schedule_browse_state, set_time_state,
                    image_viewer_state, screen_saver_setup_state,
                    screen_saver_state, ping_state, set_backlight_state,
                    sprite_maker_state, etch_a_sketch_state,
                    touch_calibrate_state, snake_state, badgy_bird_state;


//returns an initial state sequence
struct BadgeState* Init_Game(void);
struct BadgeState* Init_Game15(void);

//runs the handler in the first state sequence
void Run_Game(struct BadgeState **state);

void initQueue(struct Queue *queue);
unsigned char popQueue(struct Queue *queue);
unsigned char pushQueue(struct Queue *queue, unsigned char item);
void updateQueue(struct Queue queue, void *item );


void initGFX(void);

void setupStates15(void);

void setupMenus(void);
void setupMenus15(void);

void pollIO15(void);

void initTouchState(struct TouchState *t_state);
void initBadgeState(struct BadgeState *b_state);


//////////////////////////////
//PERIPH HANDLERS
//////////////////////////////
void* basicSlide(struct TouchQueue *t_queue);
void* autoSlide(struct TouchQueue *t_queue);
void* superSlide(struct TouchQueue *t_queue);
//////////////////////////////
// STATE HANDLERS
//////////////////////////////


void switch_state(struct BadgeState* current_state,
                  struct BadgeState* next_state);

//don't use as a standalone state
void* draw_main_ticker(struct BadgeState *b_state);
void* browse_schedule(struct BadgeState *b_state);
void* defaultIR(struct BadgeState *b_state);

void* welcome(struct BadgeState *b_state);
void* main_menu(struct BadgeState *b_state);
void* menu_maker(struct BadgeState *b_state);
void* manual_contrast(struct BadgeState *b_state);
void zeroStateCounters(struct BadgeState* b_state);
void* auto_contrast(struct BadgeState *b_state);
void* adjust_time(struct BadgeState *b_state);
void* adjust_backlight(struct BadgeState *b_state);


void* sliderPlay(struct BadgeState *b_state);
void* snake(struct BadgeState *b_state);
void* badgy_bird(struct BadgeState *b_state);
void* tunnelFlight(struct BadgeState *b_state);
void* image_viewer(struct BadgeState *b_state);
void* setup_screen_saver(struct BadgeState *b_state);
void* gogo_screen_saver(struct BadgeState *b_state);
void* user_ping(struct BadgeState *b_state);

void* debugStage(struct BadgeState *b_state);
void printTouchVals(unsigned char btm, unsigned char side);
void* sendMsg(struct BadgeState *b_state);

/******************************************************************************/
/**********************[Display Programmer Interface]**************************/
/******************************************************************************/

typedef enum ResourceType {//this is used to indicate type of graphics resource
    LINE,                  //for the display_list as used in functions
    VERTLINE,
    HORTLINE,
    RECTANGLE,
    CHARACTER,
    PIC,
    BACKGROUND,
}ResourceType;

typedef struct display_list{//this structure contains the display list and its counters
    unsigned char queue_counter;
    unsigned char queue_reader;
    unsigned char composite_queue[100][6];
}display_list;

void init_display_list(void);//call this function to initialize or reset the display list

void add_to_display_list(unsigned char ResourceType,//this function can be used directly
        unsigned char color_picID,                  //but it is recommended that you use
        unsigned char x1,                           //the provided convenience functions below
        unsigned char y1,
        unsigned char x2_width_charVal,
        unsigned char y2_height);

void writeline(unsigned char * charin,//writes a string of text to the display list
        unsigned char no_of_chars,
        unsigned char x,
        unsigned char y);

void printchar(unsigned char Character,//writes a character to the display list
        unsigned char x,
        unsigned char y,
        unsigned char color);

void rectangle(unsigned char x,//draws a rectangle to the display list
        unsigned char y,
        unsigned char width,
        unsigned char height,
        unsigned char color);

void line(unsigned char x1,//draws a line to the display list and decides
        unsigned char y1,  //which line function to use based on coordinates
        unsigned char x2,
        unsigned char y2,
        unsigned char color);

void clear(unsigned char color);//clears the screan and fills it with a color

/******************************************************************************/
/**************************[End Display Interface]*****************************/
/******************************************************************************/



/**************************[LCD COMPOSITE FUNCTION]****************************/
void LCDComposite(void);//this function retrieves the next queued item in the
                        //display list and compoisites it to the screen
/******************************************************************************/