#include "badge15.h"
#include "Stages15/game2048.h"
#include "Stages15/connect4.h"
#include "Stages15/bowl.h"

#define NULL 0

const struct menu_t breakfast_m[] = {
   {"yummy", GREEN_BG, TEXT, {NULL}}, /* can init union either with or without {} */
   {"back", GREEN_BG, BACK, NULL}, /* can init union either with or without {} */
};

const struct menu_t welcome_m[] = {
   {"yo", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

const struct menu_t david_m[] = {
   {"david m", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

const struct menu_t break1010_m[] = {
   {"break time", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

const struct menu_t nick_m[] = {
   {"nick m", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

const struct menu_t pm_m[] = {
   {"paul morgan", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

const struct menu_t break1050_m[] = {
   {"break1050", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

const struct menu_t lunch_m[] = {
   {"lunch", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

const struct menu_t day1_m[] = {
   {" 8:00 Breakfast", GREEN_BG, MENU, {breakfast_m}},
   {" 9:00 Welcome", GREEN_BG, MENU, {welcome_m}},
   {"11:30 Break", GREEN_BG, MENU, break1050_m},
   {"11:30 Lunch", GREEN_BG, MENU, lunch_m},
   {"back", GREEN_BG, BACK, NULL},
};

const struct menu_t day2_m[] = {
   {" 8:00 Breakfast", GREEN_BG, MENU, breakfast_m},
   {" 9:00 Welcome", GREEN_BG, MENU, welcome_m},
   {"10:00 David", GREEN_BG, MENU, david_m},
   {"11:00 Break", GREEN_BG, MENU, break1010_m},
   {"11:30 Nick", GREEN_BG, MENU, nick_m},
   {"11:45 PM", GREEN_BG, MENU, pm_m},
   {"11:30 Break", GREEN_BG, MENU, break1050_m},
   {"11:30 Lunch", GREEN_BG, MENU, lunch_m},
   {"back", GREEN_BG, BACK, NULL},
};


const struct menu_t schedule_m[] = {
   {"day1", GREEN_BG, MENU, day1_m},
   {"day2", GREEN_BG, MENU, day2_m},
   {"back", GREEN_BG, BACK, NULL},
};

#define STATEVERSION
#ifdef STATEVERSION
enum {
   FW_INIT,
   FW_RED_ON,
   FW_RED_WAIT,
   FW_RED_OFF,
   FW_GREEN_ON,
   FW_GREEN_WAIT,
   FW_GREEN_OFF,
   FW_BLUE_ON,
   FW_BLUE_WAIT,
   FW_BLUE_OFF,
   FW_EXIT,
};

void firewall_cb()
{
	static unsigned short state = FW_INIT;
	static unsigned int cnt;

	cnt++;
	switch (state) {
		case FW_INIT:
			cnt = 0;
			state++;
			break;

		/* red */
		case FW_RED_ON:
			red(50);
			state++;
			break;

		case FW_RED_WAIT:
			if (cnt == 100000) state++;
			break;

		case FW_RED_OFF:
			red(0);
			state++;
			break;

		/* green */
		case FW_GREEN_ON:
			green(50);
			state++;
			break;

		case FW_GREEN_WAIT:
			if (cnt == 200000) state++;
			break;

		case FW_GREEN_OFF:
			green(0);
			state++;
			break;

		/* blue */
		case FW_BLUE_ON:
			blue(50);
			state++;
			break;

		case FW_BLUE_WAIT:
			if (cnt == 300000) state++;
			break;

		case FW_BLUE_OFF:
			blue(0);
			state++;
			break;

		case FW_EXIT:
			state = FW_INIT;
			runningApp = NULL;
			break;

		default:
			break;
	}
};
#else
void firewall_cb()
{
	static int fw=0;

	if (fw == 0) {
		red(255);
	}

	if (fw == 100000) {
		red(0);
		green(255);
	}

	if (fw == 200000) {
		green(0);
		blue(255);
	}

	if (fw == 300000) { /* reset */
		blue(0);
		fw = 0; 
		runningApp = NULL;
	}
	else fw++;
};
#endif

void connect4_cb()
{
    runningApp = &connect4_Init;
};

void game_2048_cb()
{
    runningApp = game_2048_Run;
};

void bowling_cb() {
	setNote(173, 2048);
	runningApp = bowl_cb;
};

void hacker_cb() {
	setNote(173, 2048);
	runningApp = NULL;
};

void aliens_cb()
{ 
	setNote(173, 2048);
	runningApp = NULL;
};

const struct menu_t games_m[] = {
   {"Firewall",	GREEN_BG, FUNCTION, (struct menu_t *)firewall_cb}, /* coerce/cast to a menu_t data pointer */
   {"Bowling",	GREEN_BG, FUNCTION, (struct menu_t *)bowling_cb},
   {"Hacker",	GREEN_BG, FUNCTION, (struct menu_t *)hacker_cb},
   {"Aliens",	GREEN_BG, FUNCTION, (struct menu_t *)aliens_cb},
   {"2048",	GREEN_BG, FUNCTION, (struct menu_t *)game_2048_cb},
   {"Row 4",	GREEN_BG, FUNCTION, (struct menu_t *)connect4_cb},
//   {"more",	GREEN_BG, MORE, NULL},
   {"back",	GREEN_BG, BACK, NULL},
};

void led_cb()
{
	setNote(173, 2048);
	runningApp = NULL;
};

void contrast_cb()
{
	setNote(173, 2048);
	runningApp = NULL;
};

void timedate_cb()
{
	setNote(173, 2048);
	runningApp = NULL;
};

void screensaver_cb()
{
	setNote(173, 2048);
	runningApp = NULL;
};

void backlight_cb()
{
	setNote(173, 2048);
	runningApp = NULL;
};

struct menu_t settings_m[] = {
   {"led",	GREEN_BG, FUNCTION, (struct menu_t *)led_cb},  /* coerce/cast to a menu_t data pointer */
   {"contrast",	GREEN_BG, FUNCTION, (struct menu_t *)contrast_cb},
   {"time & date",GREEN_BG, FUNCTION, (struct menu_t *)timedate_cb},
   {"screensaver",GREEN_BG, FUNCTION, (struct menu_t *)screensaver_cb},
   {"backlight",GREEN_BG, FUNCTION, (struct menu_t *)backlight_cb},
   {"back",	GREEN_BG, BACK, NULL},
};

struct menu_t achievements_m[] = {
   {"back", GREEN_BG, BACK, NULL},
};

struct menu_t main_m[] = {
   {"Schedule",    GREEN_BG, MENU, schedule_m},
   {"Games",       GREEN_BG, MENU, games_m},
   {"Settings",    GREEN_BG, MENU, settings_m},
   {"Achievments", GREEN_BG, MENU, achievements_m},
   {"", GREEN_BG, BACK, NULL}
} ;

/*
usage case
*/

#define MORE_INC 4

#define MAX_MENU_DEPTH 8
static unsigned char G_menuCnt=0; // index for G_menuStack
struct menu_t *G_menuStack[MAX_MENU_DEPTH] = { 0 }; // track user traversing menus

/*
cc -o menu menu.c -DMAINMENU
*/

#ifdef MAINMENU
#include <stdio.h>
char spaces[16] = "                ";

struct menu_t *G_menu = NULL ; // current menu item in stack

/* traverse menus */
main() {
   struct menu_t *sub_menu;
   unsigned char depth=0;

   G_menu = main_m; /* init */

   while(1) {
      printf("%s %s data %x ", &spaces[15-depth], G_menu->name, G_menu);
      fflush(stdout);

      switch (G_menu->type) {
          case MORE: /* display next page of menu */
            printf("more\n");
            fflush(stdout);
            //G_menu += MORE_INC;
            G_menu++;
            break;

          case BACK: /* return from menu */
            /* if depth is already zero then we are at the end of main menu */
            if (depth == 0) return(0);

            depth--;
            printf("back depth = %d\n", depth);
            fflush(stdout);
            if (G_menuCnt > 0) G_menuCnt--; /* check for menu stack underflow should assert it > 0 */
            G_menu = G_menuStack[G_menuCnt] ;

            break;

          case TEXT: /* display some text (clock perhaps) */
            printf("%s\n", G_menu->name);
            fflush(stdout);
            G_menu++;
            break;

          case MENU: /* drill down into menu */
            printf("menu\n");
            fflush(stdout);
            sub_menu = G_menu->data.menu; /* go into this menu */
            G_menu++;                        /* advance past this item so when we return we are position for next loop */
            G_menuStack[G_menuCnt++] = G_menu; /* push onto stack  */
            if (G_menuCnt == MAX_MENU_DEPTH) G_menuCnt--; /* too deep, undo */

            G_menu = sub_menu; /* go into menu */
            depth++;
            break;

          case FUNCTION: /* call the function pointer */
            printf("function\n");
            fflush(stdout);
            (*G_menu->data.func)();
            G_menu++;
            break;

          default:
            break;
      }
   }
}
#endif

#ifndef MAINMENU


/*
  NOTE- the LCD is running in mirrored mode on the X axis

  When oriented with USB connector at top it looks like this:
  128 .... 64 ... 0

  so everything drawn in increasing order goes right to left

  currently the char routine draws Y in decreasing (up), 
  so 1st Y position has to offset down CHAR_HEIGHT to account for that
*/

#define CHAR_WIDTH 8
#define CHAR_HEIGHT 10

void display_menu(struct menu_t *menu, struct menu_t *selected)
{
	static unsigned char cursor_x, cursor_y;
	unsigned char c;
	struct menu_t *tmp_menu;

	cursor_x = 2;
	cursor_y = CHAR_HEIGHT;

	clearscreen(0); /* assume color 0 == BACKGROUND */
        show_pic(KITTEN, 0, 0);
	while (1) {
		unsigned char rect_w=0;

		/* if name is NULL leave now */
		if (menu->name[0] == 0) break;

		for (c=0, rect_w=0; (menu->name[c] != 0); c++)
			rect_w += CHAR_WIDTH;

		add_to_display_list(FILLED_RECTANGLE, 0, cursor_x-1, cursor_y-1, rect_w-1, CHAR_HEIGHT-1);

		for (c=0; (menu->name[c] != 0); c++)
			add_to_display_list(CHARACTER, ((menu == selected) ? RED : GREEN), cursor_x + (c * CHAR_WIDTH), cursor_y, menu->name[c], 0);

		cursor_y += CHAR_HEIGHT;

		/* last menu item quit */
		if (menu->type == BACK) break;

		menu++;
	}
}

/* for this increment the units are menu items */
#define PAGESIZE 8

void (*runningApp)() = NULL;

struct menu_t *currMenu = NULL; /* init */
struct menu_t *selectedMenu = NULL; /* item the cursor is on */


/* 
   NOTE-
     apps will call this but since this returns to the callback
     code will execute up the the fuction return()
*/
void returnToMenus()
{
    if (currMenu == NULL) {
        G_menuStack[G_menuCnt] = main_m;
        currMenu = main_m;
        selectedMenu = currMenu;
    }

    display_menu(currMenu, selectedMenu);
    runningApp = NULL;
}

void menus()
{
    if (runningApp != NULL) {
            (*runningApp)();
            return;
    }

    if (currMenu == NULL) {
            G_menuStack[G_menuCnt] = main_m;
            currMenu = main_m;
            selectedMenu = currMenu;
            display_menu(currMenu, selectedMenu);
    }


    /* see if physical button has been clicked */
    //if ((sampleButtonStatus & BUTTON_MASK) && (buttonTimestamp[BUTTON] != last_buttonTimestmap)) {
    //	last_buttonTimestmap = buttonTimestamp[BUTTON];
    if (BUTTON_PRESSED_AND_CONSUME)
    {
            switch (selectedMenu->type) {

            case MORE: /* jump to next page of menu */
                    setNote(173, 2048); /* a */
                    currMenu += PAGESIZE;
                    selectedMenu = currMenu;
                    break;

            case BACK: /* return from menu */
                    setNote(154, 2048); /* b */
                    if (G_menuCnt == 0) return; /* stack is empty, error or main menu */
                    G_menuCnt--;
                    currMenu = G_menuStack[G_menuCnt] ;
                    selectedMenu = currMenu;
                    break;

            case TEXT: /* maybe highlight if clicked?? */
                    setNote(145, 2048); /* c */
                    break;

            case MENU: /* drills down into menu if clicked */
                    setNote(129, 2048); /* d */
                    G_menuStack[G_menuCnt++] = currMenu; /* push onto stack  */
                    if (G_menuCnt == MAX_MENU_DEPTH) G_menuCnt--; /* too deep, undo */
                    currMenu = selectedMenu->data.menu; /* go into this menu */
                    selectedMenu = currMenu;
                    break;

            case FUNCTION: /* call the function pointer if clicked */
                    setNote(115, 2048); /* e */
                    runningApp = selectedMenu->data.func;
                    //(*selectedMenu->data.func)();
                    break;

            default:
                    break;
            }

            display_menu(currMenu, selectedMenu);
    }
    /* *** PEB ***** not convinced this should be an else
       both sliders can be pressed then second will never get handled
    */
    else if (TOP_SLIDE_AND_CONSUME) /* handle slider/soft button clicks */
    {
        setNote(109, 2048); /* f */

        /* make sure not on first menu item */
        if (selectedMenu > currMenu)
        {
            selectedMenu--;
            display_menu(currMenu, selectedMenu);
        }
    }
    /* *** PEB ***** not convinced this should be an else
       both sliders can be pressed then this one will never get handled
    */
    else if (BOTTOM_SLIDE_AND_CONSUME)
    {
        setNote(97, 2048); /* g */

        /* make sure not on last menu item */
        if (selectedMenu->type != BACK)
        {
            selectedMenu++;
            display_menu(currMenu, selectedMenu);
        }
    }
}

/*
  ripped from above for app menus
  this is not meant for persistant menus
  like the main menu
*/
void genericMenu(struct menu_t *L_menu)
{
    static struct menu_t *L_currMenu = NULL; /* LOCAL not to be confused to much with menu()*/
    static struct menu_t *L_selectedMenu = NULL; /* LOCAL ditto   "    "    */
    static unsigned char L_menuCnt=0; // index for G_menuStack
    static struct menu_t *L_menuStack[4] = { 0 }; // track user traversing menus

    if (L_menu == NULL) return; /* no thanks */

    if (L_currMenu == NULL) {
	L_menuCnt = 0;
	L_menuStack[L_menuCnt] = L_menu;
	L_currMenu = L_menu;
	L_selectedMenu = L_menu;

	display_menu(L_currMenu, L_selectedMenu);

	return;
    }

    if (BUTTON_PRESSED_AND_CONSUME)
    {
            switch (L_selectedMenu->type) {

            case MORE: /* jump to next page of menu */
                    setNote(173, 2048); /* a */
                    L_currMenu += PAGESIZE;
                    L_selectedMenu = L_currMenu;
                    break;

            case BACK: /* return from menu */
                    setNote(154, 2048); /* b */
                    if (L_menuCnt == 0) return; /* stack is empty, error or main menu */
                    L_menuCnt--;
                    L_currMenu = L_menuStack[L_menuCnt] ;
                    L_selectedMenu = L_currMenu;
		    display_menu(L_currMenu, L_selectedMenu);
                    break;

            case TEXT: /* maybe highlight if clicked?? */
                    setNote(145, 2048); /* c */
                    break;

            case MENU: /* drills down into menu if clicked */
                    setNote(129, 2048); /* d */
                    L_menuStack[L_menuCnt++] = L_currMenu; /* push onto stack  */
                    if (L_menuCnt == MAX_MENU_DEPTH) L_menuCnt--; /* too deep, undo */
                    L_currMenu = L_selectedMenu->data.menu; /* go into this menu */
                    L_selectedMenu = L_currMenu;
		    display_menu(L_currMenu, L_selectedMenu);
                    break;

            case FUNCTION: /* call the function pointer if clicked */
                    setNote(115, 2048); /* e */
                    (*L_selectedMenu->data.func)();

		    /* clean up for nex call back */
		    L_currMenu = NULL;
		    L_selectedMenu = NULL;

		    L_menuCnt = 0;
		    L_menuStack[L_menuCnt] = NULL;
                    break;

            default:
                    break;
            }
    }
    else if (TOP_SLIDE_AND_CONSUME) /* handle slider/soft button clicks */
    {
        setNote(109, 2048); /* f */

        /* make sure not on first menu item */
        if (L_selectedMenu > L_currMenu)
        {
            L_selectedMenu--;
            display_menu(L_currMenu, L_selectedMenu);
        }
    }
    else if (BOTTOM_SLIDE_AND_CONSUME)
    {
        setNote(97, 2048); /* g */

        /* make sure not on last menu item */
        if (L_selectedMenu->type != BACK)
        {
            L_selectedMenu++;
            display_menu(L_currMenu, L_selectedMenu);
        }
    }
}

#
#endif
