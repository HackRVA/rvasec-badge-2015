#include "badge_common.h"
#include "badge15.h"
//#include "schedule.h"
//#include "./Stages15/SpriteMaker.h"

//const char hextab[]={"0123456789ABCDEF"};
extern char *hextab;
extern char gContrast;
extern unsigned int backlight_cnt, backlight_rate;

//dont need both in prod, debugging now
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
    for(i = 0; i < QUEUE_SIZE ; i++)
    {
        queue->vals[i] = 0;
    }
    queue->q_size = 0;
}

unsigned char popQueue(struct Queue *queue)
{
    unsigned char ret = queue->vals[0];

    unsigned char i = 0;

    //from front to second to last
    for(i = 0; i < QUEUE_SIZE - 1; i++)
    {
        //shift up to front
        queue->vals[i] = queue->vals[i+1];
    }

    //
    queue->vals[QUEUE_SIZE - 1] = 0;

    // don't underflow
    if(queue->q_size)
        queue->q_size--;

    return ret;
}

unsigned char pushQueue(struct Queue *queue, unsigned char item)
{
    //is there room?
    if(queue->q_size < QUEUE_SIZE)
    {
        //assign value and increment size
        queue->vals[queue->q_size] = item;
        queue->q_size++;
        return 0;
    }
    else
        //unable to insert, return error
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
    //is zero still null on 32bit MCU?
    b_state->next_state    = b_state;
    b_state->state_handler = 0;
    b_state->slide_handler = autoSlide;
    b_state->ir_handler    = defaultIR;
    b_state->onEnter       = 0;
    b_state->onExit        = 0;
    b_state->leds          = 0;
    b_state->counter_1     = 0;
    b_state->counter_2     = 0;
    b_state->big_counter   = 0;
    b_state->big_counter_1 = 0;
    b_state->ir_recvd_msg  = 0;

    //set touch to zero
    initTouchState(&b_state->slide_states.front);
    initTouchState(&b_state->slide_states.mid_f);
    initTouchState(&b_state->slide_states.mid_b);
    initTouchState(&b_state->slide_states.back);

    //Setup IR queues
    initQueue(&b_state->ir_incoming);
    initQueue(&b_state->ir_outgoing);
}

//initialize all the things
struct BadgeState start_state;

struct menu_entry *main_entries[3], games, schedule, settings, sketch, adventure;

//extra element for back button
struct menu_entry *game_entries[6], snake_e, bird_e, pong_e, more_games_e;
struct menu_entry *more_game_entries[3], images_e, ping_e;

struct menu_entry *settings_entries[6], backlight, contrast, set_time, speaker,
                    more_settings_e;
struct menu_entry *more_settings_entries[3], screen_saver_e, screen_saver_activate;
struct menu_entry *day_pick_entries[3],  day1_e, day2_e;
struct menu_entry back_to_main, back_to_games, back_to_settings;

struct menu_page *current_menu, main_page, games_page, settings_page, 
                  schedule_page, more_settings_page, more_games_page, day_pick_page;

//main menu texts
const char game_txt[] = "DIVERSIONS",
           schedule_txt[] = "SCHEDULE",
           settings_txt[] = "SETTINGS";

//games menu texts
const char snake_txt[] = "SNAKE",
           adventure_txt[] = "ADVENTURE",
           sketch_txt[] = "SKETCH",
           bird_txt[] = "BADGY BIRD",
           pong_txt[] = "PONG",
           images_txt[] = "IMAGES";

//settings menu text
const char set_backlight[] = "BACKLIGHT",
           adjust_contrast[] = "CONTRAST",
           enable_speaker[] = "SPEAKER",
           set_time_txt[] = "SET TIME";

//
const char screen_saver_txt[] = "SCREEN SAVER" ,
           screen_saver_on_txt[] = "SCRN SAVER ON",
           ping_txt[] = "PING",
           day1_txt[] = "DAY 1",
           day2_txt[] = "DAY 2",
           go_back[] = "<-[BACK]",
           more_txt[] = "[MORE]";

void initGFX(void)
{

/*
    unsigned char i = 0;
    
    main_buff.pixels = pix2;
    main_buff.height = 48;
    main_buff.width = 84;

    bird_idle_buff.pixels = bird_idle;
    bird_idle_buff.height = 11;
    bird_idle_buff.width = 15;

    //the doge
    screen_images[i].name = doge_txt;
    screen_images[i].buff.pixels = doge;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;
    
    i++;

    //grumpy cat
    screen_images[i].name = grump_txt;
    screen_images[i].buff.pixels = grump;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

    i++;

    //grumpy cat
    screen_images[i].name = stache_txt;
    screen_images[i].buff.pixels = stache;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

    i++;

    //grumpy cat
    screen_images[i].name = batman_txt;
    screen_images[i].buff.pixels = batman;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

    i++;

    //grumpy cat
    screen_images[i].name = biohazard_txt;
    screen_images[i].buff.pixels = bioHazard;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

    i++;

    //grumpy cat
    screen_images[i].name = fawkes_txt;
    screen_images[i].buff.pixels = fawkes;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

        i++;

    //grumpy cat
    screen_images[i].name = heartbleed_txt;
    screen_images[i].buff.pixels = heartbleed;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

        i++;

    //grumpy cat
    screen_images[i].name = honeypot_txt;
    screen_images[i].buff.pixels = honeyPot;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;


        i++;

    //grumpy cat
    screen_images[i].name = ironman_txt;
    screen_images[i].buff.pixels = ironman;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

        i++;

    //grumpy cat
    screen_images[i].name = kali_txt;
    screen_images[i].buff.pixels = kali;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

            i++;

    //grumpy cat
    screen_images[i].name = metasploit_txt;
    screen_images[i].buff.pixels = metasploit;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

     i++;

    //grumpy cat
    screen_images[i].name = nmap_txt;
    screen_images[i].buff.pixels = nmap;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;
     i++;

    //grumpy cat
    screen_images[i].name = nuke2_txt;
    screen_images[i].buff.pixels = nuke2;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

         i++;

    //grumpy cat
    screen_images[i].name = nuke_txt;
    screen_images[i].buff.pixels = nuke;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

         i++;

    //grumpy cat
    screen_images[i].name = offensive_txt;
    screen_images[i].buff.pixels = offensive;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

         i++;

    //grumpy cat
    screen_images[i].name = ohw_txt;
    screen_images[i].buff.pixels = oHardware;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

         i++;

    //grumpy cat
    screen_images[i].name = peace_txt;
    screen_images[i].buff.pixels = peace;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

         i++;

    //grumpy cat
    screen_images[i].name = rick_txt;
    screen_images[i].buff.pixels = rick;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

         i++;

    //grumpy cat
    screen_images[i].name = rvasec_txt;
    screen_images[i].buff.pixels = rvaSec;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

         i++;

    screen_images[i].name = smiley_txt;
    screen_images[i].buff.pixels = smiley;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

         i++;

    screen_images[i].name = superman_txt;
    screen_images[i].buff.pixels = superMan;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

             i++;

    screen_images[i].name = supersec_txt;
    screen_images[i].buff.pixels = superRvaSec;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;
    
     i++;

    screen_images[i].name = wireshark_txt;
    screen_images[i].buff.pixels = wireshark;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;  
    
     i++;

    screen_images[i].name = xzibit_txt;
    screen_images[i].buff.pixels = xzibit;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;
     i++;

    screen_images[i].name = yuno_txt;
    screen_images[i].buff.pixels = YUNO1;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;

     i++;

    screen_images[i].name = skullxbones_txt;
    screen_images[i].buff.pixels = skullxbones;
    screen_images[i].buff.height = 48;
    screen_images[i].buff.width = 84;
*/

}

void setupMenus(void)
{
    current_menu = &main_page;

    //-----------------------
    // setup MAIN
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
        
    //-----------------------
    // setup GAMES
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

    //-----------------------
    // setup MORE GAMES
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
        ping_e.state_entry = 0;//&ping_state;
        
    more_game_entries[2] = &back_to_games;
        back_to_games.text = go_back;
        back_to_games.menu_entry = &games_page;
        back_to_games.state_entry = 0;
        

    //-----------------------
    // setup SCHEDULE
    schedule_page.num_entries = 3;
    schedule_page.selected = 0;
    schedule_page.entries = day_pick_entries;
    schedule_page.extra_func = 0;// draw_main_ticker;

    day_pick_entries[0] = &day1_e;
        day1_e.text = day1_txt;
        day1_e.menu_entry = 0;
        day1_e.state_entry = &schedule_browse_state;

    day_pick_entries[1] = &day2_e;
        day2_e.text = day2_txt;
        day2_e.menu_entry = 0;
        day2_e.state_entry = &schedule_browse_state;

    day_pick_entries[2] = &back_to_main;

    //-----------------------
    // setup SETTINGS
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

    //-----------------------
    // setup MORE SETTINGS
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
    //construct_TouchCalibrate15(&touch_calibrate_state);
    //construct_spriteMaker15(&sprite_maker_state);
    //construct_EtchASketch15(&etch_a_sketch_state);
    //construct_snake15(&snake_state);
    //construct_BadgyBird15(&badgy_bird_state);
}

extern unsigned char G_IRrecvVal;
extern unsigned char G_IRsendVal;
extern unsigned char G_IRsend;
extern unsigned char G_IRrecv;
extern unsigned char G_bitCnt;


struct BadgeState* Init_Game15(void)
{
return 0;

#ifdef PEB
    //backlight
    LATBbits.LATB7 = 1;
    button_pressed = button_cnt = button_used = 0;
    btm_size = side_size = 0;

    LCDInit();
    LCDClear();
    initGFX();

    setupStates15();
#endif
    //setupMenus();
    //initConferenceEvents();

//    start_state.tm.l=0;
//    start_state.tm.sec=0x00;
//    start_state.tm.min=0x20;
//    start_state.tm.hour=0x08;
//
//    start_state.dt.wday=4;
//    start_state.dt.mday=0x05;
//    start_state.dt.mon=0x06;
//    start_state.dt.year=0x14;

//    setupRTCC();
//    RtccSetTimeDate(start_state.tm.l, start_state.dt.l);
//    int TimerInit(void);
//    TimerInit();
//        G_IRrecv = 0;
//        G_IRrecvVal = 0;
//        G_IRsend = 0;
//        G_bitCnt = 0;
    //return (struct BadgeState *)&start_state;
    return (struct BadgeState *)&touch_calibrate_state;
    //return &bird_state;
    //return &ping_state;
}

//update clock every T_UPDATE_DELTA iterations
#define T_UPDATE_DELTA 20000
void Run_Game(struct BadgeState **state)
{
return; /* PEB */

    static unsigned int cnt = 0;


    *state = (*state)->next_state;

    pollIO15();
    //don't need to update too often
//    if( cnt++ == T_UPDATE_DELTA)
//    {
//        cnt = 0;
//        (*state)->tm.l = get_time();
//    }
//
//    //something recieved? Give it to the current state
//    if(G_IRrecv == 2)
//    {
//        pushQueue(&(*state)->ir_incoming, G_IRrecvVal);
//
//        //all messages in and we have a handler? Call the handler
//        if((*state)->ir_incoming.q_size == QUEUE_SIZE && (*state)->ir_handler)
//            (*state)->ir_handler(*state);
//
//        G_IRrecv = 0;
//        G_IRrecvVal = 0;
//        G_IRsend = 0;
//        G_bitCnt = 0;
//    }

//    //state wants to send something?
//    if((*state)->ir_outgoing.q_size && !G_IRsend)// && !G_IRsendVal)
//    {
//        G_IRsendVal = popQueue(&(*state)->ir_outgoing);
//        G_IRsend = 1;
//    }

    //run the state
    (*state)->state_handler(*state);
}

// This function does:
//  1.) Set current_state->next_state = next_state
//  1.) Call onExit(current_state)
//  2.) Call onEnter(next_state)
void switch_state(struct BadgeState* current_state,
                  struct BadgeState* next_state)
{
    // Maybe add previous state? Make both states aware of eachother
    current_state->next_state = next_state;

    if(current_state->onExit)
        // Do some clean up or prep for next state
        current_state->onExit(current_state);

    if(next_state->onEnter)
        // Do prepwork before entering state
        //  (clear screen, init LEDs, etc)
        next_state->onEnter(next_state);
}


void pollIO15(void)
{
/*
    if(PORTBbits.RB13 && button_pressed < 250)
    {
        button_pressed += 1;
    }
    else if (!PORTBbits.RB13)
    {
        button_cnt = 0;
        button_pressed = 0;
    }

    getTouchUL();
    getTouchUR();

    getTouchRU();
    getTouchRL();
*/
}

void* defaultIR(struct BadgeState *b_state)
{
/*
    
    unsigned char i = 0, chksum = 0;//= 0x7F & G_IRrecvVal;//b_state->ir_incoming.vals[0];
    unsigned int temp_in = 0;

    unsigned char tmp_chars[QUEUE_SIZE + 1] = {0};

    for(i = 0; i < QUEUE_SIZE; i++)
    {
        tmp_chars[i] =
                (popQueue(&b_state->ir_incoming) & 0x7F);
        chksum ^= tmp_chars[i];

        //first char in goes to top
        temp_in |=  ((unsigned int) tmp_chars[i]) << (24 - (8 * i));
    }
    //LCDClear();
    clear_screen_buff();
    fill_buff(&main_buff, 0x00);

    if(tmp_chars[0] == PING)
    {
        buffString(0, 0,
                    "GOT PING:",
                    &main_buff);
        
    }
    else if (tmp_chars[0] == PONG)
    {
        buffString(0, 0,
                    "GOT PONG:",
                    &main_buff);

    }
    else if (tmp_chars[0] == MSG)
    {
        buffString(0, 0,
                    "GOT MSG:",
                    &main_buff);
    }
    else
    {
        //b_state->ir_recvd_msg = b_state->ir_incoming.vals[0];
        buffString(0, 0,
                    "GOT SOMETHING:",
                    &main_buff);

        buffString( 10, 10,
                    tmp_chars,
                    &main_buff);
    }

    set_leds( chksum );

    blitBuff_opt(&main_buff, 0, 0);
*/
}

#define MSG_HOLD 500000
void* user_ping(struct BadgeState *b_state)
{
/*
    unsigned char redraw = 0;
    unsigned char test[] ="abcd";
    b_state->slide_handler(&b_state->slide_states);

    char lr_swipe = b_state->slide_states.front.lr_swipe;
    char bt_swipe = b_state->slide_states.front.bt_swipe;

    if(!b_state->counter_1)
    {
        //redraw = 1;
        b_state->counter_1++;
        b_state->big_counter = 0;
        b_state->next_state = b_state;
        redraw = 1;
    }

    if(b_state->big_counter)
    {
        b_state->big_counter--;
        if(!b_state->big_counter)
        {
            redraw = 1;
            //b_state->counter_2++;
        }
    }

    if(bt_swipe < 0 || button_pressed == 250)// && b_state->counter_2 < NUM_IMAGE_ASSETS - 1)
    {
        button_pressed++;

        //send the ping out
        if(!b_state->counter_2)
        {
            //fuck it, send it four times
            pushQueue(&b_state->ir_outgoing, PING | 128);
            pushQueue(&b_state->ir_outgoing, PING | 128);
            pushQueue(&b_state->ir_outgoing, PING | 128);
            pushQueue(&b_state->ir_outgoing, PING | 128);
            b_state->counter_2++;
            b_state->big_counter = MSG_HOLD;
        }
        redraw = 1;
    }


    if ( button_pressed == 250)
    {
    }


    if( (b_state->ir_recvd_msg >> 24) == PONG)
    {
        b_state->counter_2 = 2;
        b_state->big_counter = MSG_HOLD;
    }

    if(redraw)
    {
        fill_buff(&main_buff, 0x00);

        if(!b_state->counter_2)
        {
            //pushQueue(&b_state->ir_outgoing, bt_swipe);
            buffString(24, 0,
                        "SWIPE UP TO",
                        &main_buff);
            buffString(26, 10,
                        "SEND PING",
                        &main_buff);
        }

        if(b_state->counter_2 == 1)
        {
            //pushQueue(&b_state->ir_outgoing, bt_swipe);
            buffString(24, 0,
                        "SENT!",
                        &main_buff);
        }

        if(b_state->counter_2 == 1 && !b_state->big_counter)
        {
            b_state->counter_2 = 0;
            redraw = 1;
        }

        if(b_state->counter_2 == 2)
        {
            //pushQueue(&b_state->ir_outgoing, bt_swipe);
            buffString(24, 0,
                        "GOT PONG!",
                        &main_buff);
        }

        if(b_state->counter_2 == 2 && !b_state->big_counter)
        {
            b_state->counter_2 = 0;
            redraw = 1;
        }

        blitBuff_opt(&main_buff, 0, 0);

    }
*/
}

//////////////////////////////
//PERIPH HANDLERS
//////////////////////////////


//how many ticks before taking another sample
#define SAMPLE_RATE 3500
unsigned int sample_counter;

void* basicSlide(struct TouchQueue *t_queue)
{
/*
    //only check and set values if sampling
    if(sample_counter < SAMPLE_RATE)
    {
        //make sure no change happens
        t_queue->front.lr_swipe = 0;
        sample_counter++;
        return;
    }
    sample_counter = 0;

    //remove push old values back in queue, re-init front
    shiftTouchQueue(t_queue);
    
    struct TouchState *t_state = &t_queue->front;

    //assign the touch values
    t_state->lower_slider_left = G_lower_slider_left;
    t_state->lower_slider_right = G_lower_slider_right;

    //set to -1        
    t_state->lower_loc =  -1;
    t_state->side_loc = -1;

    char left_sum = t_queue->front.lower_slider_left
                    + t_queue->mid_f.lower_slider_left
                    + t_queue->mid_b.lower_slider_left
                    + t_queue->back.lower_slider_left;

   if (left_sum != t_queue->mid_f.lower_loc)
    {
        t_queue->bottom_hold_count++;
    }
   else
       t_queue->bottom_hold_count = 0;

    t_queue->front.lower_loc = left_sum;
    
    t_state->side_slider_left = 0;
    t_state->side_slider_right = 0;
*/
}

void* autoSlide(struct TouchQueue *t_queue)
{
/*
    //only check and set values if sampling
    if(sample_counter < SAMPLE_RATE)
    {
        //make sure no change happens
        t_queue->front.lr_swipe = 0;
        t_queue->front.bt_swipe = 0;
        sample_counter++;
        return;
    }
    sample_counter = 0;

    //remove push old values back in queue, re-init front
    shiftTouchQueue(t_queue);

    struct TouchState *t_state = &t_queue->front;
    t_state->lower_slider_left = G_lower_slider_left;
    t_state->lower_slider_right = G_lower_slider_right;
    t_state->side_slider_left = G_side_slider_left;
    t_state->side_slider_right = G_side_slider_right;

/////////////////////////////////
//----Bottom slider
/////////////////////////////////
    //set to -1                            vv this almost works
    t_state->lower_loc =  -1; //t_state->lower_slider_left - t_state->lower_slider_right;

    for(t_state->lower_loc = 1;
            t_state->lower_loc < btm_size
            && (G_lower_slider_right != bottom_right_pad[t_state->lower_loc]
            || G_lower_slider_left != bottom_left_pad[t_state->lower_loc]);
                t_state->lower_loc++);

    //hard code walues, need to have way to calibrate
    if (t_state->lower_loc == btm_size)
            t_state->lower_loc = -1;

    //if positive then swiping right, if negative then swiping right
    // magnitude indicates the amount of change (speed?)
    // don't bother updating if there has been no touch!
    if (t_queue->front.lower_loc != -1
        && t_queue->mid_f.lower_loc != -1
        && t_queue->mid_b.lower_loc != -1
        && t_queue->back.lower_loc != -1 )
    {
        //front two versus back two
        //t_queue->front.lr_swipe = ((t_queue->front.lower_loc + t_queue->mid_f.lower_loc)/2) - (( t_queue->mid_b.lower_loc + t_queue->back.lower_loc)/2) ;
        //new touch sense versus previous three
        t_queue->front.lr_swipe = ((t_queue->front.lower_loc)) - ((( t_queue->mid_f.lower_loc + t_queue->mid_b.lower_loc + t_queue->back.lower_loc)/3));

        char diff = (t_queue->front.lower_loc - t_queue->mid_f.lower_loc)
                    + (t_queue->mid_b.lower_loc - t_queue->back.lower_loc) ;
        //is button being held
       if (!diff)
            //== t_queue->mid_b.lower_loc)
            //== t_queue->back.lower_loc )
        {
            t_queue->bottom_hold_count++;
        }
       else
           t_queue->bottom_hold_count = 0;
    }
    else
        t_queue->front.lr_swipe = 0;

/////////////////////////////////
//----Side slider
/////////////////////////////////
    //set to -1                           
    t_state->side_loc =  -1; 

    for(t_state->side_loc = 1;
            t_state->side_loc < side_size
            && (G_side_slider_right != side_right_pad[t_state->side_loc]
            || G_side_slider_left != side_left_pad[t_state->side_loc]);
            t_state->side_loc++);

    //hard code walues, need to have way to calibrate
    if (t_state->side_loc == side_size)
            t_state->side_loc = -1;

    //if positive then swiping right, if negative then swiping right
    // magnitude indicates the amount of change (speed?)
    // don't bother updating if there has been no touch!
    if (t_queue->front.side_loc != -1
        && t_queue->mid_f.side_loc != -1
        && t_queue->mid_b.side_loc != -1
        && t_queue->back.side_loc != -1 )
    {
        //front two versus back two
        //t_queue->front.lr_swipe = ((t_queue->front.lower_loc + t_queue->mid_f.lower_loc)/2) - (( t_queue->mid_b.lower_loc + t_queue->back.lower_loc)/2) ;
        //new touch sense versus previous three
        t_queue->front.bt_swipe = ((t_queue->front.side_loc)) - ((( t_queue->mid_f.side_loc + t_queue->mid_b.side_loc + t_queue->back.side_loc)/3));

        char diff = (t_queue->front.side_loc - t_queue->mid_f.side_loc)
                    + (t_queue->mid_b.side_loc - t_queue->back.side_loc) ;
        //is button being held
       if (!diff)
            //== t_queue->mid_b.lower_loc)
            //== t_queue->back.lower_loc )
        {
            t_queue->side_hold_count++;
        }
       else
           t_queue->side_hold_count = 0;
    }
    else
        t_queue->front.bt_swipe = 0;
*/
}

void* superSlide(struct TouchQueue *t_queue)
{
/*
    //only check and set values if sampling
    if(sample_counter < SAMPLE_RATE)
    {
        //make sure no change happens
        t_queue->front.lr_swipe = 0;
        t_queue->front.bt_swipe = 0;
        sample_counter++;
        return;
    }
    sample_counter = 0;

    //remove push old values back in queue, re-init front
    shiftTouchQueue(t_queue);

    struct TouchState *t_state = &t_queue->front;
    t_state->lower_slider_left = G_lower_slider_left;
    t_state->lower_slider_right = G_lower_slider_right;
    t_state->side_slider_left = G_side_slider_left;
    t_state->side_slider_right = G_side_slider_right;

/////////////////////////////////
//----Bottom slider
/////////////////////////////////
    //set to -1                            vv this almost works
    t_state->lower_loc =  -1; //t_state->lower_slider_left - t_state->lower_slider_right;
//
//    for(t_state->lower_loc = 1;
//            t_state->lower_loc < btm_size
//            && (G_lower_slider_right != bottom_right_pad[t_state->lower_loc]
//            || G_lower_slider_left != bottom_left_pad[t_state->lower_loc]);
//                t_state->lower_loc++);
    //left ratio
    //t_state->lower_loc =

    //hard code walues, need to have way to calibrate
    if (t_state->lower_loc == btm_size)
            t_state->lower_loc = -1;

    //if positive then swiping right, if negative then swiping right
    // magnitude indicates the amount of change (speed?)
    // don't bother updating if there has been no touch!
    if (t_queue->front.lower_loc != -1
        && t_queue->mid_f.lower_loc != -1
        && t_queue->mid_b.lower_loc != -1
        && t_queue->back.lower_loc != -1 )
    {
        //front two versus back two
        //t_queue->front.lr_swipe = ((t_queue->front.lower_loc + t_queue->mid_f.lower_loc)/2) - (( t_queue->mid_b.lower_loc + t_queue->back.lower_loc)/2) ;
        //new touch sense versus previous three
        t_queue->front.lr_swipe = ((t_queue->front.lower_loc)) - ((( t_queue->mid_f.lower_loc + t_queue->mid_b.lower_loc + t_queue->back.lower_loc)/3));

        char diff = (t_queue->front.lower_loc - t_queue->mid_f.lower_loc)
                    + (t_queue->mid_b.lower_loc - t_queue->back.lower_loc) ;
        //is button being held
       if (!diff)
            //== t_queue->mid_b.lower_loc)
            //== t_queue->back.lower_loc )
        {
            t_queue->bottom_hold_count++;
        }
       else
           t_queue->bottom_hold_count = 0;
    }
    else
        t_queue->front.lr_swipe = 0;

/////////////////////////////////
//----Side slider
/////////////////////////////////
    //set to -1
    t_state->side_loc =  -1;

    for(t_state->side_loc = 1;
            t_state->side_loc < side_size
            && (G_side_slider_right != side_right_pad[t_state->side_loc]
            || G_side_slider_left != side_left_pad[t_state->side_loc]);
            t_state->side_loc++);

    //hard code walues, need to have way to calibrate
    if (t_state->side_loc == side_size)
            t_state->side_loc = -1;

    //if positive then swiping right, if negative then swiping right
    // magnitude indicates the amount of change (speed?)
    // don't bother updating if there has been no touch!
    if (t_queue->front.side_loc != -1
        && t_queue->mid_f.side_loc != -1
        && t_queue->mid_b.side_loc != -1
        && t_queue->back.side_loc != -1 )
    {
        //front two versus back two
        //t_queue->front.lr_swipe = ((t_queue->front.lower_loc + t_queue->mid_f.lower_loc)/2) - (( t_queue->mid_b.lower_loc + t_queue->back.lower_loc)/2) ;
        //new touch sense versus previous three
        t_queue->front.bt_swipe = ((t_queue->front.side_loc)) - ((( t_queue->mid_f.side_loc + t_queue->mid_b.side_loc + t_queue->back.side_loc)/3));

        char diff = (t_queue->front.side_loc - t_queue->mid_f.side_loc)
                    + (t_queue->mid_b.side_loc - t_queue->back.side_loc) ;
        //is button being held
       if (!diff)
            //== t_queue->mid_b.lower_loc)
            //== t_queue->back.lower_loc )
        {
            t_queue->side_hold_count++;
        }
       else
           t_queue->side_hold_count = 0;
    }
    else
        t_queue->front.bt_swipe = 0;
}

//////////////////////////////
// STATE HANDLERS
//////////////////////////////


void* menu_maker(struct BadgeState *b_state)
{
    //static struct pix_buff buff;
    static struct coord loc;
                    loc.x = 40;
                    loc.y = 20;
    static unsigned char leds = 0xff, redraw = 0;

    b_state->slide_handler(&b_state->slide_states);

    char lr_swipe = b_state->slide_states.front.lr_swipe;
    char bt_swipe = b_state->slide_states.front.bt_swipe;

    if(bt_swipe < 0
            && (current_menu->selected < (current_menu->num_entries - 1)))
    {
        current_menu->selected += 1;
        redraw = 1;
    }

    if(bt_swipe > 0 && (current_menu->selected > 0))
    {
        current_menu->selected -= 1;
        redraw = 1;
    }
    
    set_leds(current_menu->selected + 1);

    if ( button_pressed == 250 && current_menu->entries)
    {
        LCDClear();
        fill_buff(&main_buff, 0x00);
        redraw = 1;
        b_state->counter_1 = 0;
        button_pressed++;

        if( current_menu->entries[current_menu->selected]->menu_entry )
        {
            current_menu
                    = current_menu->entries[current_menu->selected]->menu_entry;
            return;
        }
        else if ( current_menu->entries[current_menu->selected]->state_entry )
        {
            b_state->next_state
                    = current_menu->entries[current_menu->selected]->state_entry;
            
            return;
        }
    }

    if(b_state->counter_1 == 0 || redraw)
    {
        b_state->counter_1 = 0;
        redraw = 0;
        unsigned char i = 0, t_x = 83, t_y = 8;
        char selected[] = ">", unselected[] = "";

        fill_buff(&main_buff, 0x00);

        gotoXY(0,0);

        // extra func should set counter_1 to > 1 if it doesn't need
        // constant servicing. Set counter_1 to 0 to have the screen redrawn.
        if(current_menu->extra_func)// && b_state->counter_1 == 1 )
        {
            current_menu->extra_func(b_state);
        }

        for(i = 0; i < current_menu->num_entries; i++)
        {
            loc.x = 0 ;

            loc.y = i*t_y;

            loc.y -= i;

            draw_square(&main_buff, loc, t_x, t_y);

            buffString(loc.x +2, loc.y + 2,
                        current_menu->entries[i]->text,
                        &main_buff);

            if(i == current_menu->selected
                    && current_menu->entries[i]->menu_entry )
            {
                buffString(loc.x + 71, loc.y + 2,
                            selected,
                            &main_buff);

                invertBuffArea(loc.x + 1 ,
                                loc.y + 1,
                                 t_x - 1,
                                 t_y - 2,
                                 &main_buff);
            }
            else if(i == current_menu->selected)
                invertBuffArea(loc.x + 1 ,
                                loc.y + 1,
                                 t_x - 3,
                                 t_y - 2,
                                 &main_buff);
        }

        blitBuff_opt(&main_buff, 0, 0);
        b_state->counter_1 = 1;
    }

    if(current_menu->extra_func && b_state->counter_1 == 1 )
    {
        current_menu->extra_func(b_state);
    }

*/
}

#define RATE 4000
#define MIN_CONTRAST 120
#define MAX_CONTRAST 190

void* manual_contrast(struct BadgeState *b_state)
{
/*
    static unsigned char leds = 0xff, x = 40, y  = 35;
    unsigned char redraw = 0;

    if(!b_state->counter_1)
    {
       b_state->counter_1 = 1;
       redraw = 1;
    }
    
    b_state->slide_handler(&b_state->slide_states);

    //set_leds(b_state->slide_states.front.lower_loc);
    char lr_swipe = b_state->slide_states.front.lr_swipe;
    char bt_swipe = b_state->slide_states.front.bt_swipe;
    //set_leds(leds += bt_swipe);

    if(lr_swipe < 0 && x > 10)
            //&& (current_menu->selected < (current_menu->num_entries - 1)))
    {
        //current_menu->selected += 1;
        x--;
        gContrast--;
        LCDInit();
        redraw = 1;
    }

    if(lr_swipe > 0 && x < 70)//&& (current_menu->selected > 0))
    {
        //current_menu->selected -= 1;
        x++;
        gContrast++;
        LCDInit();
        redraw = 1;
    }

    if ( button_pressed == 250 )
    {
       // if(current_menu->selected == 2)
        {
            LCDClear();
            fill_buff(&main_buff, 0x00);

            current_menu = &settings_page;
            start_state.next_state = &start_state;
            b_state->next_state = &start_state;
            redraw = 1;
            button_pressed++;
            return;
        }
    }

    if(b_state->counter_1 == 0 || redraw)
    {
        struct coord loc;
                loc.x = 0;
                loc.y = y - 1;
        LCDClear();
        //fill_buff(&buff, 0x00);
        b_state->counter_1 = 1;
        redraw = 0;
        main_buff.height = 48;
        main_buff.width = 84;
        char msg[] = "Press BTN\nwhen finished";
        main_buff.pixels = pix;
        fill_buff(&main_buff, 0x00);
        buffString(0, 0,
                    msg,
                    &main_buff);
        draw_square(&main_buff, loc, 83, 7);
        invertBuffArea(x,
                       y,
                       7,
                       3,
                       &main_buff);

        blitBuff_opt(&main_buff, 0, 0);
    }
*/
}

#define DEBOUNCE 15


#define MAIN_TICKER_RATE 80000
void* draw_main_ticker(struct BadgeState *b_state)
{
/*
    static unsigned char sub_event = 0;
    //static unsigned char ticker_i = 0, cnt;
    
    b_state->big_counter_1++;

    if(b_state->big_counter_1 == MAIN_TICKER_RATE || b_state->big_counter == 3)
    {
        // tell menu maker to redraw
        b_state->counter_1 = 0;

        //reset counter
        b_state->big_counter_1 = 0;

        if(++b_state->big_counter >= 3)
        {
            b_state->big_counter = 0;
            
            //scroll through events
            if(b_state->counter_2 < NUM_EVENTS_D1 - 1)
                b_state->counter_2++;
            else
                b_state->counter_2 = 0;
        }
    }

    //may result in duplicate redraws... w/e
    if(!b_state->counter_1)
    {
        b_rtccTime current_time;
        struct coord loc;
        loc.x = 0;
        loc.y = 36;
        char start_time[5], end_time[5], now_time[] = "11:11";

        //current_time.l = get_time();
        //current_time.l = 0x21140000;
        intTime_to_charTime(start_time, conf_events_d1[b_state->counter_2].start_time);
        intTime_to_charTime(end_time, conf_events_d1[b_state->counter_2].end_time);

//        draw_square(&main_buff, loc, 83, 11);
        draw_square(&main_buff, loc, 34, 11);
        buffString(1, 39,
            start_time,
                    &main_buff);

        setTimeString(b_state->tm, now_time);

        buffString(48, 39,
                    now_time,
                    &main_buff);

        invertBuffArea(47 ,
                        36,
                         33,
                         11,
                         &main_buff);

        if(!b_state->big_counter)
        {
            buffString_trunc(0, 28,
                            conf_events_d1[b_state->counter_2].ballroom_title,
                            14,
                            11,
                            "...",
                        &main_buff);
        }
        else if (b_state->big_counter == 1 && conf_events_d1[b_state->counter_2].salon_title[0])
        {
            buffString_trunc(0, 28,
                conf_events_d1[b_state->counter_2].salon_title,
                14,
                11,
                "...",
            &main_buff);
        }
        else if (b_state->big_counter == 2 && conf_events_d1[b_state->counter_2].other_title[0])
        {
            buffString_trunc(0, 28,
                conf_events_d1[b_state->counter_2].other_title,
                14,
                11,
                "...",
            &main_buff);
        }
        else //sub events are empty, move on
        {
            b_state->big_counter = 3;
            //b_state->big_counter_1 == MAIN_TICKER_RATE - 1;
        }
    }
*/
}

void printTouchVals(unsigned char btm, unsigned char side)
{
/*
    char val[3];
     val[0] = ' ';
     val[1] = ' ';
     val[2] = 0;
     LCDString(val);
     LCDString(val);

    if(btm)
    {
        char help_msg[] = "Swipe L -> R";
        utoa(val, (unsigned) G_lower_slider_left, 10);

        LCDString(val);

        val[0] = ' ';
        val[1] = ' ';
        val[2] = 0;
        LCDString(val);

        utoa(val, (unsigned) G_lower_slider_right, 10);
        LCDString(val);

        val[0] = '\n';
        val[1] = '\n';
        val[2] = 0;
        LCDString(val);
        LCDString(help_msg);
    }

    if(btm && side)
    {
        //spacers
        val[0] = '-';
        val[1] = '-';
        val[2] = 0;
        LCDString(val);
    }

    //LCDClear();
    if (side)
    {
        char help_msg1[] = "\n          T\n";
        char help_msg3[] = "   Swipe  ^\n";
        char help_msg4[] = "          B\n";
        utoa(val, (unsigned) G_side_slider_left, 10);

        //side left
        LCDString(val);

        //seperator
        val[0] = ' ';
        val[1] = ' ';
        val[2] = 0;
        LCDString(val);

        //side right
        utoa(val, (unsigned) G_side_slider_right, 10);
        LCDString(val);

        //seperator
//        val[0] = '\n ';
//        val[1] = 0;
//        val[2] = 0;
//        LCDString(val);
        LCDString(help_msg1);
        //LCDString(help_msg2);
        LCDString(help_msg3);
        LCDString(help_msg4);
    }
*/
}

void* browse_schedule(struct BadgeState *b_state)
{
/*
    unsigned char redraw = 0;
    static struct Conference_Event* events = 0;
    static unsigned char num_events = 0;
    b_state->slide_handler(&b_state->slide_states);

    char lr_swipe = b_state->slide_states.front.lr_swipe;
    char bt_swipe = b_state->slide_states.front.bt_swipe;
    if(!b_state->counter_1)
    {

        if(schedule_page.selected == 0)
        {
            events = conf_events_d1;
            num_events = NUM_EVENTS_D1;
        }
        else if (schedule_page.selected == 1)
        {
            events = conf_events_d2;
            num_events = NUM_EVENTS_D2;
        }
        redraw = 1;
        b_state->counter_1++;
        b_state->next_state = b_state;
        b_state->big_counter = 0;
    }

    if(bt_swipe < 0 && b_state->counter_2 < num_events - 1)
    {
        b_state->counter_2++;
        redraw = 1;
    }

    if(bt_swipe > 0 && b_state->counter_2 > 0)
    {
        b_state->counter_2--;
        redraw = 1;
    }
    
    if(lr_swipe > 0 && b_state->big_counter < 2)
    {
        b_state->big_counter++;
        redraw = 1;
    }

    if(lr_swipe < 0 && b_state->big_counter > 0)
    {
        b_state->big_counter--;
        redraw = 1;
    }

    if ( button_pressed == 250)
    {
        button_pressed++;
        fill_buff(&main_buff, 0x00);
        start_state.next_state = &start_state;
        b_state->next_state = &start_state;
        b_state->counter_1 = 0;

    }
    if(redraw)
    {
        struct coord loc;
        loc.x = 0;
        loc.y = 9;
        char start_time[5], end_time[5];
        fill_buff(&main_buff, 0x00);
        intTime_to_charTime(start_time, events[b_state->counter_2].start_time);
        intTime_to_charTime(end_time, events[b_state->counter_2].end_time);

        draw_square(&main_buff, loc, 83, 9);

        buffString(1, 11,
                    start_time,
                    &main_buff);

        buffString(48, 11,
                    end_time,
                    &main_buff);

        if(b_state->big_counter == 0)
        {
            buffString(22, 0,
                        "Ballroom",
                        &main_buff);

            buffString(0, 20,
                events[b_state->counter_2].ballroom_title,
                        &main_buff);
        }

        else if(b_state->big_counter == 1)
        {
            buffString(24, 0,
                        "Salons",
                        &main_buff);

            buffString(0, 20,
                events[b_state->counter_2].salon_title,
                        &main_buff);
        }

        else if(b_state->big_counter == 2)
        {
            buffString(24, 0,
                "Other",
                &main_buff);

            buffString(0, 20,
                events[b_state->counter_2].other_title,
                        &main_buff);
        }
        
        blitBuff_opt(&main_buff, 0, 0);
    }
*/
}

void* adjust_time(struct BadgeState *b_state)
{
/*
    unsigned char redraw = 0;
    static unsigned char hour = 0x08, min = 0x00;
    b_state->slide_handler(&b_state->slide_states);

    char lr_swipe = b_state->slide_states.front.lr_swipe;
    char bt_swipe = b_state->slide_states.front.bt_swipe;
    
    if(!b_state->counter_1)
    {
        redraw = 1;
        b_state->counter_1++;
        b_state->next_state = b_state;
    }

    if(bt_swipe < 0)// && b_state->counter_2 < NUM_EVENTS - 1)
    {
        if(b_state->counter_1 ==  1 && hour < 24)
            //hour++;
            bcdIncrement(&hour);
        else if (b_state->counter_1 ==  2 && min < 60)
            //min++;
            bcdIncrement(&min);
        //b_state->counter_2++;
        redraw = 1;
    }

    if(bt_swipe > 0)// && b_state->counter_2 > 0)
    {
        if(b_state->counter_1 ==  1 && hour > 0)
            //hour--;
            bcdDecrement(&hour);
        else if (b_state->counter_1 ==  2 && min > 0)
            //min--;
            bcdDecrement(&min);
        //b_state->counter_2--;
        redraw = 1;
    }

    if(lr_swipe > 0)
    {
        if(b_state->counter_1 == 1)
            b_state->counter_1 = 2;
        redraw = 1;
    }

    if(lr_swipe < 0)
    {
        if(b_state->counter_1 == 2)
            b_state->counter_1 = 1;
        redraw = 1;
    }

    if ( button_pressed == 250)
    {
        b_state->tm.hour = hour;
        b_state->tm.min = min;
        RtccSetTimeDate(b_state->tm.l, b_state->dt.l);
        button_pressed++;
        fill_buff(&main_buff, 0x00);
        start_state.next_state = &start_state;
        b_state->next_state = &start_state;
        b_state->counter_1 = 0;
    }
    if(redraw)
    {
        struct coord loc;
        loc.x = 0;
        loc.y = 0;
        unsigned char inv_x, inv_y = 2;
        char hours[] = "99", minutes[] = "99";
        fill_buff(&main_buff, 0x00);

        setBase10String(hour, hours);
        setBase10String(min, minutes);

        draw_square(&main_buff, loc, 83, 11);

        buffString(24, 2,
                    hours,
                    &main_buff);

        buffString(48, 2,
                    minutes,
                    &main_buff);

        //hour selected
        if(b_state->counter_1 == 1)
        {
            inv_x = 23;
        }
        else if (b_state->counter_1 == 2)
        {
            inv_x = 47;
        }

        invertBuffArea(inv_x ,
                        inv_y,
                         13,
                         6,
                         &main_buff);
        
        blitBuff_opt(&main_buff, 0, 0);
    }
*/
}

void* image_viewer(struct BadgeState *b_state)
{
/*
    unsigned char redraw = 0;
    b_state->slide_handler(&b_state->slide_states);

    char lr_swipe = b_state->slide_states.front.lr_swipe;
    char bt_swipe = b_state->slide_states.front.bt_swipe;

    if(!b_state->counter_1)
    {
        redraw = 1;
        b_state->counter_1++;
        b_state->next_state = b_state;
    }

    if(bt_swipe < 0 && b_state->counter_2 < NUM_IMAGE_ASSETS - 1)
    {
        b_state->counter_2++;
        redraw = 1;
    }

    if(bt_swipe > 0 && b_state->counter_2 > 0)
    {
        b_state->counter_2--;
        redraw = 1;
    }
    if ( button_pressed == 250)
    {
        button_pressed++;
        fill_buff(&main_buff, 0x00);
        start_state.next_state = &start_state;
        b_state->next_state = &start_state;
        b_state->counter_1 = 0;

    }
    if(redraw)
    {
        blitBuff_opt(&screen_images[b_state->counter_2].buff, 0, 0);
    }
*/
}

#define DELAY_INTERVAL 50000
void* setup_screen_saver(struct BadgeState *b_state)
{
/*
    static unsigned char num_images = 0, selecting = 0, cnt = 0;
    unsigned char redraw = 0;
    b_state->slide_handler(&b_state->slide_states);

    char lr_swipe = b_state->slide_states.front.lr_swipe;
    char bt_swipe = b_state->slide_states.front.bt_swipe;

    if( b_state->big_counter)
    {
        b_state->big_counter--;
        if(!b_state->big_counter)
            redraw = 1;
    }

    if(!b_state->counter_1)
    {
        b_state->big_counter_1 = 0;
        //selecting = 0;
        redraw = 1;
        b_state->counter_1++;
        //b_state->big_counter_1 = 0;
        b_state->next_state = b_state;

        if(!b_state->counter_2)
            b_state->counter_2++;
    }

    if(bt_swipe < 0 
            && b_state->counter_2 < NUM_IMAGE_ASSETS
            && b_state->counter_2 < 10)
    {
        b_state->counter_2++;
        redraw = 1;
    }

    if(bt_swipe > 0 && b_state->counter_2 > 0)
    {
        b_state->counter_2--;
        redraw = 1;
    }
    if ( button_pressed == 250)
    {
        button_pressed++;

        //go to next step in the setup
        if(b_state->big_counter_1 == 0)
        {
            fill_buff(&main_buff, 0x00);
            b_state->big_counter_1 = 1;
            char num_images_str[] = "99";

            setBase10String(num_saver_imgs, num_images_str);
            buffString(10, 9,
                        "SELECTED:",
                        &main_buff);

            buffString(68, 9,
                        num_images_str,
                        &main_buff);
            b_state->big_counter = DELAY_INTERVAL;
            b_state->counter_2 = 0;
            redraw = 1;
            selecting = 0;
            blitBuff_opt(&main_buff, 0, 0);
        }
        else if(b_state->big_counter_1 == 1)
        {
            screen_saver_imgs[selecting] = &screen_images[b_state->counter_2];
            selecting++;
            if(selecting > (num_saver_imgs - 1))
            {
                //b_state->big_counter_1++;
                b_state->big_counter_1 = 0;
                fill_buff(&main_buff, 0x00);
                start_state.next_state = &start_state;
                b_state->next_state = &start_state;
                b_state->counter_1 = 0;
                return;
            }
        }
    }
    
    if(redraw)
    {
        if(b_state->big_counter_1 == 0)
        {
            //b_state->counter_2 = 0;
            fill_buff(&main_buff, 0x00);

            if(b_state->counter_2 == 0)
                b_state->counter_2++;

            num_saver_imgs = b_state->counter_2;
            char num_images_str[] = "99";

            setBase10String(num_saver_imgs, num_images_str);
            buffString(17, 9,
                        "HOW MANY",
                        &main_buff);

            buffString(21, 16,
                        "IMAGES",
                        &main_buff);
            
            buffString(37, 29,
                        num_images_str,
                        &main_buff);
            blitBuff_opt(&main_buff, 0, 0);
        }
        else if(b_state->big_counter_1 == 1 && !b_state->big_counter)
        {

            if(b_state->counter_2 > NUM_IMAGE_ASSETS - 1)
                b_state->counter_2 = NUM_IMAGE_ASSETS - 1;

             //shit, this call seems to overrun and whipe out num_images
//            blitBuff_toBuff(&screen_images[b_state->counter_2].buff,
//                            &main_buff,
//                            0, 0, OPAQUE);
            blitBuff_opt(&screen_images[b_state->counter_2].buff, 0, 0);
            b_state->big_counter_1 = 1;            
        }
        
    }
*/
}

#define SAVER_INTERVAL 500000
void* gogo_screen_saver(struct BadgeState *b_state)
{
/*
    unsigned char redraw = 0;
    b_state->slide_handler(&b_state->slide_states);

    char lr_swipe = b_state->slide_states.front.lr_swipe;
    char bt_swipe = b_state->slide_states.front.bt_swipe;

    if(!b_state->counter_1)
    {
        redraw = 1;
        b_state->counter_1++;
        b_state->next_state = b_state;
        b_state->big_counter = SAVER_INTERVAL;

        //might as well save some power
        set_leds(0x00);
        if(num_saver_imgs == 0)
        {
            fill_buff(&main_buff, 0x00);
            start_state.next_state = &start_state;
            b_state->next_state = &start_state;
            b_state->counter_1 = 0;
        }
    }

    if(!b_state->big_counter--)
    {
        b_state->big_counter = SAVER_INTERVAL;
        if(b_state->counter_2 < num_saver_imgs - 1)
        {
            b_state->counter_2++;
            
        }
        else
        {
            b_state->counter_2 = 0;
        }
        redraw = 1;
    }

    if ( button_pressed == 250)
    {
        button_pressed++;
        fill_buff(&main_buff, 0x00);
        start_state.next_state = &start_state;
        b_state->next_state = &start_state;
        b_state->counter_1 = 0;

    }
    if(redraw)
    {
        //blitBuff_opt(&screen_images[b_state->counter_2].buff, 0, 0);
        blitBuff_opt(&(screen_saver_imgs[b_state->counter_2]->buff), 0, 0);
    }
*/
}

void* sendMsg(struct BadgeState *b_state)
{
/*
    //init
    if(!b_state->counter_1)
    {
        b_state->counter_1 = 1;
        b_state->counter_2 = 0;
    }
*/
    
}

void* adjust_backlight_slider(struct BadgeState *b_state)
{
/*
    static unsigned char leds = 0xff, x = 40, y  = 35, redraw = 0;

    b_state->slide_handler(&b_state->slide_states);

    //set_leds(b_state->slide_states.front.lower_loc);
    char lr_swipe = b_state->slide_states.front.lr_swipe;
    char bt_swipe = b_state->slide_states.front.bt_swipe;
    //set_leds(leds += bt_swipe);

    if(lr_swipe < 0 && x > 10)
            //&& (current_menu->selected < (current_menu->num_entries - 1)))
    {
        //current_menu->selected += 1;
        x--;
        //backlight_rate-= 100;
        backlight_rate >>= 1;
        //LCDInit();
        redraw = 1;
    }

    if(lr_swipe > 0 && x < 70)//&& (current_menu->selected > 0))
    {
        //current_menu->selected -= 1;
        x++;
        //backlight_rate+= 100;
        if(!backlight_rate)
            backlight_rate = 2;
        else
            backlight_rate <<= 1;
        //LCDInit();
        redraw = 1;
    }

    if ( button_pressed == 250 )
    {
        LCDClear();
        fill_buff(&main_buff, 0x00);

        current_menu = &settings_page;
        start_state.next_state = &start_state;
        b_state->next_state = &start_state;
        redraw = 1;
        button_pressed++;
        return;

    }

    if(b_state->counter_1 == 0 || redraw)
    {
        struct coord loc;
                loc.x = 0;
                loc.y = y - 1;
        LCDClear();
        //fill_buff(&buff, 0x00);
        b_state->counter_1 = 1;
        redraw = 0;
        main_buff.height = 48;
        main_buff.width = 84;
        char msg[] = "Press BTN\nwhen finished";
        main_buff.pixels = pix;
        fill_buff(&main_buff, 0x00);
        buffString(0, 0,
                    msg,
                    &main_buff);
        draw_square(&main_buff, loc, 83, 7);

        invertBuffArea(x,
                       y,
                       7,
                       3,
                       &main_buff);

        blitBuff_opt(&main_buff, 0, 0);
    }
*/
}

void* adjust_backlight(struct BadgeState *b_state)
{
/*
    static unsigned char x = 33, y  = 35;
    unsigned char redraw = 0;

    b_state->slide_handler(&b_state->slide_states);

    //set_leds(b_state->slide_states.front.lower_loc);
    char lr_swipe = b_state->slide_states.front.lr_swipe;
    char bt_swipe = b_state->slide_states.front.bt_swipe;

    if(!b_state->counter_2)
    {
        b_state->counter_2 = 1;
        redraw =  1;
    }

    if(lr_swipe < 0)// && x > 10)
    {
        //current_menu->selected += 1;
        x = 6;

        LATBbits.LATB7 = 0;

        redraw = 1;
    }

    if(lr_swipe > 0)//&& x < 70)//&& (current_menu->selected > 0))
    {
        //current_menu->selected -= 1;
        x = 59;
        LATBbits.LATB7 = 1;
        redraw = 1;
    }

    if ( button_pressed == 250 )
    {
        LCDClear();
        fill_buff(&main_buff, 0x00);

        b_state->counter_2 = 0;
        //current_menu = &settings_page;
        
        start_state.next_state = &start_state;
        b_state->next_state = &start_state;
        
        redraw = 1;
        button_pressed++;
        return;

    }

    if(redraw)
    {
        struct coord loc;
                loc.x = 5;
                loc.y = 39;
        LCDClear();

        
        redraw = 0;

        fill_buff(&main_buff, 0x00);
        
        buffString(0, 10,
                    "Press BTN\nwhen finished",
                    &main_buff);

        //OFF stuff
        buffString(6, 41,
                    "OFF",
                    &main_buff);

        draw_square(&main_buff, loc, 19, 8);



        //ON stuff
        buffString(60, 40,
                    "ON",
                    &main_buff);

        loc.x = 58;
        draw_square(&main_buff, loc, 19, 8);

        invertBuffArea(x,
                       40,
                       18,
                       6,
                       &main_buff);

        blitBuff_opt(&main_buff, 0, 0);

        redraw = 0;
    }
*/
}
