# 1 "../src/badge15.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../src/badge15.c"
# 1 "../src/badge_common.h" 1
# 14 "../src/badge_common.h"
int setupRTCC(void);
unsigned long get_time(void);

typedef union
{
 struct
 {
  unsigned char rsvd;
  unsigned char sec;
  unsigned char min;
  unsigned char hour;
 };
 unsigned char b[4];
 unsigned short w[2];
 unsigned long l;
}b_rtccTime;


typedef union
{
 struct
 {
  unsigned char wday;
  unsigned char mday;
  unsigned char mon;
  unsigned char year;
 };
 unsigned char b[4];
 unsigned short w[2];
 unsigned long l;
}b_rtccDate;



enum BLIT_STYLE {ZERO_ERASES, ZERO_ALPHA};
struct pix_buff
{


    unsigned char *pixels;

    unsigned char height, width;

};

struct image
{
    char *name;
    struct pix_buff buff;
};

struct coord
{
    unsigned char x, y;
};

typedef struct coreVars {
   unsigned char mtimerL;
   unsigned char mtimerH;
   unsigned char mtimerH2;
} coreVars ;

typedef struct coreBlock {
   unsigned char block[16];
} coreBlock ;

typedef union coreMemory {
   coreVars cV;
   coreBlock cB;
} coreMemory;
coreMemory core;



void b_strcpy(char* dest, const char* src);
void intTime_to_charTime(char* c_time, unsigned int i_time);

char do_BTM_CapTouch_Left();
char do_BTM_CapTouch_Right();
void set_leds(unsigned char leds);
void putPix_to_buff(struct pix_buff *dest_buff, unsigned char x, unsigned char y);
void fill_buff_area(struct coord loc,
                    unsigned char width,
                    unsigned char height,
                    unsigned char fill,
                    struct pix_buff *dest_buff);
void draw_square(struct pix_buff *dest_buff, struct coord loc,
                unsigned char width, unsigned char height);

unsigned char check_buffer_collisions(struct pix_buff *src_buff,
                                     struct pix_buff *detect_buff,
                                     unsigned char x, unsigned char y);
void getTouchUL();
void getTouchUR();
void LCDClear(void) ;
void LCDInit(void) ;
void LCDLogo();

void setTimeString(b_rtccTime time, char *t_string);


void setBase10String(unsigned char num, char *t_string);
# 2 "../src/badge15.c" 2
# 1 "../src/badge15.h" 1
# 44 "../src/badge15.h"
struct pix_buff main_buff, bird_idle_buff;


unsigned char btm_size, side_size;


unsigned char button_pressed, button_cnt, button_used;



struct image screen_images[1];





struct TouchState
{
    char lr_swipe;
    char bt_swipe;


    char lower_loc;

    unsigned char lower_slider_left;
    unsigned char lower_slider_right;


    char side_loc;

    unsigned char side_slider_left;
    unsigned char side_slider_right;
};


static unsigned char broadcast[];



struct Queue
{
    unsigned char q_size;

    unsigned char vals[4];
};


struct TouchQueue
{

    char bottom_hold_count, side_hold_count;


    struct TouchState front;
    struct TouchState mid_f;
    struct TouchState mid_b;
    struct TouchState back;
};




struct BadgeState
{
    b_rtccTime tm;
    b_rtccDate dt;



    struct BadgeState *next_state;


    void* (*state_handler)(struct BadgeState* b_state);





    void (*onEnter)(struct BadgeState* b_state);


    void (*onExit)(struct BadgeState* b_state);


    void* (*slide_handler)(struct TouchQueue *t_queue);


    void* (*ir_handler)(struct BadgeState* b_state);

    struct Queue ir_incoming, ir_outgoing;

    unsigned int ir_recvd_msg;

    struct TouchQueue slide_states;


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
    struct BadgeState *state_entry;
    struct menu_page *menu_entry;
};

struct menu_page
{
    unsigned char num_entries;
    unsigned char selected;
    struct menu_entry **entries;
    void* (*extra_func)(struct BadgeState *b_state);
};


struct BadgeState snake_state, sketch_state, manual_contrast_state,
                    bird_state, schedule_browse_state, set_time_state,
                    image_viewer_state, screen_saver_setup_state,
                    screen_saver_state, ping_state, set_backlight_state,
                    sprite_maker_state, etch_a_sketch_state,
                    touch_calibrate_state, snake_state, badgy_bird_state;



struct BadgeState* Init_Game(void);
struct BadgeState* Init_Game15(void);


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





void* basicSlide(struct TouchQueue *t_queue);
void* autoSlide(struct TouchQueue *t_queue);
void* superSlide(struct TouchQueue *t_queue);





void switch_state(struct BadgeState* current_state,
                  struct BadgeState* next_state);


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
# 3 "../src/badge15.c" 2




extern char *hextab;
extern char gContrast;
extern unsigned int backlight_cnt, backlight_rate;


unsigned char pix2[504] = {0};


unsigned char max_lower_left, max_lower_right,
              max_side_left, max_side_right;


void zeroStateCounters(struct BadgeState* b_state)
{
    b_state->big_counter = 0;
    b_state->big_counter_1 = 0;
    b_state->counter_1 = 0;
    b_state->counter_2 = 0;
}

void initTouchState(struct TouchState *t_state)
{
    t_state->lr_swipe = 0;
    t_state->bt_swipe = 0;
    t_state->lower_loc = 0;
    t_state->lower_slider_left = 0;
    t_state->lower_slider_right = 0;

    t_state->side_loc = 0;
    t_state->side_slider_left = 0;
    t_state->side_slider_right = 0;
}

void initQueue(struct Queue *queue)
{
    unsigned char i = 0;
    for(i = 0; i < 4 ; i++)
    {
        queue->vals[i] = 0;
    }
    queue->q_size = 0;
}

unsigned char popQueue(struct Queue *queue)
{
    unsigned char ret = queue->vals[0];

    unsigned char i = 0;


    for(i = 0; i < 4 - 1; i++)
    {

        queue->vals[i] = queue->vals[i+1];
    }


    queue->vals[4 - 1] = 0;


    if(queue->q_size)
        queue->q_size--;

    return ret;
}

unsigned char pushQueue(struct Queue *queue, unsigned char item)
{

    if(queue->q_size < 4)
    {

        queue->vals[queue->q_size] = item;
        queue->q_size++;
        return 0;
    }
    else

        return 1;
}

void shiftTouchQueue(struct TouchQueue *queue)
{
    queue->back = queue->mid_b;
    queue->mid_b = queue->mid_f;
    queue->mid_f = queue->front;

    initTouchState(&queue->front);
}

void initBadgeState(struct BadgeState *b_state)
{

    b_state->next_state = b_state;
    b_state->state_handler = 0;
    b_state->slide_handler = autoSlide;
    b_state->ir_handler = defaultIR;
    b_state->onEnter = 0;
    b_state->onExit = 0;
    b_state->leds = 0;
    b_state->counter_1 = 0;
    b_state->counter_2 = 0;
    b_state->big_counter = 0;
    b_state->big_counter_1 = 0;
    b_state->ir_recvd_msg = 0;


    initTouchState(&b_state->slide_states.front);
    initTouchState(&b_state->slide_states.mid_f);
    initTouchState(&b_state->slide_states.mid_b);
    initTouchState(&b_state->slide_states.back);


    initQueue(&b_state->ir_incoming);
    initQueue(&b_state->ir_outgoing);
}


struct BadgeState start_state;

struct menu_entry *main_entries[3], games, schedule, settings, sketch, adventure;


struct menu_entry *game_entries[6], snake_e, bird_e, pong_e, more_games_e;
struct menu_entry *more_game_entries[3], images_e, ping_e;

struct menu_entry *settings_entries[6], backlight, contrast, set_time, speaker,
                    more_settings_e;
struct menu_entry *more_settings_entries[3], screen_saver_e, screen_saver_activate;
struct menu_entry *day_pick_entries[3], day1_e, day2_e;
struct menu_entry back_to_main, back_to_games, back_to_settings;

struct menu_page *current_menu, main_page, games_page, settings_page,
                  schedule_page, more_settings_page, more_games_page, day_pick_page;


const char game_txt[] = "DIVERSIONS",
           schedule_txt[] = "SCHEDULE",
           settings_txt[] = "SETTINGS";


const char snake_txt[] = "SNAKE",
           adventure_txt[] = "ADVENTURE",
           sketch_txt[] = "SKETCH",
           bird_txt[] = "BADGY BIRD",
           pong_txt[] = "PONG",
           images_txt[] = "IMAGES";


const char set_backlight[] = "BACKLIGHT",
           adjust_contrast[] = "CONTRAST",
           enable_speaker[] = "SPEAKER",
           set_time_txt[] = "SET TIME";


const char screen_saver_txt[] = "SCREEN SAVER" ,
           screen_saver_on_txt[] = "SCRN SAVER ON",
           ping_txt[] = "PING",
           day1_txt[] = "DAY 1",
           day2_txt[] = "DAY 2",
           go_back[] = "<-[BACK]",
           more_txt[] = "[MORE]";

void initGFX(void)
{
# 383 "../src/badge15.c"
}

void setupMenus(void)
{
    current_menu = &main_page;



    main_page.num_entries = 3;
    main_page.selected = 0;
    main_page.entries = main_entries;
    main_page.extra_func = draw_main_ticker;

    main_entries[0] = &games;
        games.text = game_txt;
        games.menu_entry = &games_page;
        games.state_entry = 0;

    main_entries[1] = &schedule;
        schedule.text = schedule_txt;
        schedule.menu_entry = &schedule_page;
        schedule.state_entry = 0;

    main_entries[2] = &settings;
        settings.text = settings_txt;
        settings.menu_entry = &settings_page;
        settings.state_entry = 0;



    games_page.num_entries = 6;
    games_page.selected = 0;
    games_page.entries = game_entries;

    game_entries[0] = &snake_e;
        snake_e.text = snake_txt;
        snake_e.menu_entry = 0;
        snake_e.state_entry = &snake_state;

    game_entries[1] = &bird_e;
        bird_e.text = bird_txt;
        bird_e.menu_entry = 0;
        bird_e.state_entry = &bird_state;

    game_entries[2] = &pong_e;
        pong_e.text = pong_txt;
        pong_e.menu_entry = 0;
        pong_e.state_entry = 0;

    game_entries[3] = &sketch;
        sketch.text = sketch_txt;
        sketch.menu_entry = 0;
        sketch.state_entry = &sketch_state;

    game_entries[4] = &more_games_e;
        more_games_e.text = more_txt;
        more_games_e.menu_entry = &more_games_page;
        more_games_e.state_entry = 0;

    game_entries[5] = &back_to_main;



    more_games_page.num_entries = 3;
    more_games_page.selected = 0;
    more_games_page.entries = more_game_entries;

    more_game_entries[0] = &images_e;
        images_e.text = images_txt;
        images_e.menu_entry = 0;
        images_e.state_entry = &image_viewer_state;

    more_game_entries[1] = &ping_e;
        ping_e.text = ping_txt;
        ping_e.menu_entry = 0;
        ping_e.state_entry = 0;

    more_game_entries[2] = &back_to_games;
        back_to_games.text = go_back;
        back_to_games.menu_entry = &games_page;
        back_to_games.state_entry = 0;




    schedule_page.num_entries = 3;
    schedule_page.selected = 0;
    schedule_page.entries = day_pick_entries;
    schedule_page.extra_func = 0;

    day_pick_entries[0] = &day1_e;
        day1_e.text = day1_txt;
        day1_e.menu_entry = 0;
        day1_e.state_entry = &schedule_browse_state;

    day_pick_entries[1] = &day2_e;
        day2_e.text = day2_txt;
        day2_e.menu_entry = 0;
        day2_e.state_entry = &schedule_browse_state;

    day_pick_entries[2] = &back_to_main;



    settings_page.num_entries = 6;
    settings_page.selected = 0;
    settings_page.entries = settings_entries;

    settings_entries[0] = &backlight;
        backlight.text = set_backlight;
        backlight.menu_entry = 0;
        backlight.state_entry = &set_backlight_state;

    settings_entries[1] = &contrast;
        contrast.text = adjust_contrast;
        contrast.menu_entry = 0;
        contrast.state_entry = &manual_contrast_state;

    settings_entries[2] = &speaker;
        speaker.text = enable_speaker;
        speaker.menu_entry = 0;
        speaker.state_entry = 0;

    settings_entries[3] = &set_time;
        set_time.text = set_time_txt;
        set_time.menu_entry = 0;
        set_time.state_entry = &set_time_state;

    settings_entries[4] = &more_settings_e;
        more_settings_e.text = more_txt;
        more_settings_e.menu_entry = &more_settings_page;
        more_settings_e.state_entry = 0;

    settings_entries[5] = &back_to_main;
        back_to_main.text = go_back;
        back_to_main.menu_entry = &main_page;
        back_to_main.state_entry = 0;



    more_settings_page.num_entries = 3;
    more_settings_page.selected = 0;
    more_settings_page.entries = more_settings_entries;

    more_settings_entries[0] = &screen_saver_e;
        screen_saver_e.text = screen_saver_txt;
        screen_saver_e.menu_entry = 0;
        screen_saver_e.state_entry = &screen_saver_setup_state;

    more_settings_entries[1] = &screen_saver_activate;
        screen_saver_activate.text = screen_saver_on_txt;
        screen_saver_activate.menu_entry = 0;
        screen_saver_activate.state_entry = &screen_saver_state;

    more_settings_entries[2] = &back_to_settings;
        back_to_settings.text = go_back;
        back_to_settings.menu_entry = &settings_page;
        back_to_settings.state_entry = 0;

}

void setupStates15(void)
{





}

extern unsigned char G_IRrecvVal;
extern unsigned char G_IRsendVal;
extern unsigned char G_IRsend;
extern unsigned char G_IRrecv;
extern unsigned char G_bitCnt;


struct BadgeState* Init_Game15(void)
{
return 0;
# 598 "../src/badge15.c"
    return (struct BadgeState *)&touch_calibrate_state;


}



void Run_Game(struct BadgeState **state)
{
return;

    static unsigned int cnt = 0;


    *state = (*state)->next_state;

    pollIO15();
# 645 "../src/badge15.c"
    (*state)->state_handler(*state);
}





void switch_state(struct BadgeState* current_state,
                  struct BadgeState* next_state)
{

    current_state->next_state = next_state;

    if(current_state->onExit)

        current_state->onExit(current_state);

    if(next_state->onEnter)


        next_state->onEnter(next_state);
}


void pollIO15(void)
{
# 688 "../src/badge15.c"
}

void* defaultIR(struct BadgeState *b_state)
{
# 748 "../src/badge15.c"
}


void* user_ping(struct BadgeState *b_state)
{
# 857 "../src/badge15.c"
}
# 866 "../src/badge15.c"
unsigned int sample_counter;

void* basicSlide(struct TouchQueue *t_queue)
{
# 911 "../src/badge15.c"
}

void* autoSlide(struct TouchQueue *t_queue)
{
# 1024 "../src/badge15.c"
}

void* superSlide(struct TouchQueue *t_queue)
{
# 1259 "../src/badge15.c"
}





void* manual_contrast(struct BadgeState *b_state)
{
# 1346 "../src/badge15.c"
}





void* draw_main_ticker(struct BadgeState *b_state)
{
# 1446 "../src/badge15.c"
}

void printTouchVals(unsigned char btm, unsigned char side)
{
# 1521 "../src/badge15.c"
}

void* browse_schedule(struct BadgeState *b_state)
{
# 1641 "../src/badge15.c"
}

void* adjust_time(struct BadgeState *b_state)
{
# 1750 "../src/badge15.c"
}

void* image_viewer(struct BadgeState *b_state)
{
# 1793 "../src/badge15.c"
}


void* setup_screen_saver(struct BadgeState *b_state)
{
# 1924 "../src/badge15.c"
}


void* gogo_screen_saver(struct BadgeState *b_state)
{
# 1984 "../src/badge15.c"
}

void* sendMsg(struct BadgeState *b_state)
{
# 1997 "../src/badge15.c"
}

void* adjust_backlight_slider(struct BadgeState *b_state)
{
# 2077 "../src/badge15.c"
}

void* adjust_backlight(struct BadgeState *b_state)
{
# 2176 "../src/badge15.c"
}
