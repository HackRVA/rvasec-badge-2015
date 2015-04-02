#include "badge15.h"

#define NULL 0

struct menu_t breakfast_m[] = {
   {"yummy", GREEN_BG, TEXT, {NULL}}, /* can init union either with or without {} */
   {"back", GREEN_BG, BACK, NULL}, /* can init union either with or without {} */
};

struct menu_t welcome_m[] = {
   {"yo", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

struct menu_t david_m[] = {
   {"david m", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

struct menu_t break1010_m[] = {
   {"break time", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

struct menu_t nick_m[] = {
   {"nick m", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

struct menu_t pm_m[] = {
   {"paul morgan", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

struct menu_t break1050_m[] = {
   {"break1050", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

struct menu_t lunch_m[] = {
   {"lunch", GREEN_BG, TEXT, {NULL}},
   {"back", GREEN_BG, BACK, NULL},
};

struct menu_t day1_m[] = {
   {" 8:00 Breakfast", GREEN_BG, MENU, {breakfast_m}},
   {" 9:00 Welcome", GREEN_BG, MENU, {welcome_m}},
   {"11:30 Break", GREEN_BG, MENU, break1050_m},
   {"11:30 Lunch", GREEN_BG, MENU, lunch_m},
   {"back", GREEN_BG, BACK, NULL},
};

struct menu_t day2_m[] = {
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


struct menu_t schedule_m[] = {
   {"day1", GREEN_BG, MENU, day1_m},
   {"day2", GREEN_BG, MENU, day2_m},
   {"back", GREEN_BG, BACK, NULL},
};

void firewall_cb() { puts("FUNCTION firewall\n"); };
void bowling_cb() { puts("FUNCTION bowl\n"); };
void hacker_cb() { puts("FUNCTION hack\n"); };
void aliens_cb() { puts("FUNCTION aliens\n"); };

struct menu_t games_m[] = {
   {"Firewall",	GREEN_BG, FUNCTION, (struct menu_t *)firewall_cb}, /* coerce/cast to a menu_t data pointer */
   {"Bowling",	GREEN_BG, FUNCTION, (struct menu_t *)bowling_cb},
   {"Hacker",	GREEN_BG, FUNCTION, (struct menu_t *)hacker_cb},
   {"Aliens",	GREEN_BG, FUNCTION, (struct menu_t *)aliens_cb},
//   {"more",	GREEN_BG, MORE, NULL},
   {"back",	GREEN_BG, BACK, NULL},
};

void led_cb() { puts("FUNCTION led\n"); };
void contrast_cb() { puts("FUNCTION contrast\n"); };
void timedate_cb() { puts("FUNCTION timedate\n"); };
void screensaver_cb() { puts("FUNCTION screensave\n"); };
void backlight_cb() { puts("FUNCTION backlight\n"); };

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

#define CHAR_WIDTH 6
#define CHAR_HEIGHT 10

void display_menu(struct menu_t *menu, struct menu_t *selected)
{
	static unsigned char cursor_x, cursor_y;
	unsigned char c;
	struct menu_t *tmp_menu;

	cursor_x = 32;
	cursor_y = CHAR_HEIGHT;

	clearscreen(0); /* assume color 0 == BACKGROUND */
	while (menu->type != BACK) {
		for (c=0; (menu->name[c] != 0); c++) {
			// add_to_display_list(CHARACTER, menu->attrib, cursor_x + (c * CHAR_WIDTH), cursor_y, menu->name[c], 0);
			add_to_display_list(CHARACTER, ((menu == selected) ? RED : 0), cursor_x + (c * CHAR_WIDTH), cursor_y, menu->name[c], 0);
		}
		cursor_y += CHAR_HEIGHT;
		menu++;
	}
}

/* for this increment the units are menu items */
#define PAGESIZE 8

struct menu_t *currMenu = NULL; /* init */
struct menu_t *selectedMenu = NULL; /* item the cursor is on */
void menus()
{
	static unsigned int last_buttonTimestmap=0;

        if (currMenu == NULL) {
		G_menuStack[G_menuCnt] = main_m;
		currMenu = main_m;
		selectedMenu = currMenu;
           	display_menu(currMenu, selectedMenu);
	}

        /* see if physical button has been clicked */
	if ((sampleButtonStatus & BUTTON_MASK) && (buttonTimestamp[BUTTON] != last_buttonTimestmap)) {
		struct menu_t *tmp_menu;

		last_buttonTimestmap = buttonTimestamp[BUTTON];
	
		switch (selectedMenu->type) {
		case MORE: /* jump to next page of menu */
			currMenu += PAGESIZE;
			selectedMenu = currMenu;
			break;
	
		case BACK: /* return from menu */
			if (G_menuCnt == 0) return; /* stack is empty, error or main menu */
			G_menuCnt--; 
			currMenu = G_menuStack[G_menuCnt] ;
			selectedMenu = currMenu;
			break;
	
		case TEXT: /* maybe highlight if clicked?? */
			break;
	
		case MENU: /* drills down into menu if clicked */
			G_menuStack[G_menuCnt++] = currMenu; /* push onto stack  */
			if (G_menuCnt == MAX_MENU_DEPTH) G_menuCnt--; /* too deep, undo */
			currMenu = selectedMenu->data.menu; /* go into this menu */
			selectedMenu = currMenu;
			break;
	
		case FUNCTION: /* call the function pointer if clicked */
			(*selectedMenu->data.func)();
			break;
	
		default:
			break;
		}
	
           	display_menu(currMenu, selectedMenu);
        }
        else { /* handle slider/soft button clicks */
		static unsigned int last_topTimestmap=0, last_bottomTimestmap=0; /* init */

                if (sampleButtonStatus & TOP_SLIDER_MASK) {
			setNote(64, 1024);

			if (buttonTimestamp[TOP_SLIDER] != last_topTimestmap) {
				/* make sure not on first menu item */
				if (selectedMenu > currMenu) selectedMenu--;

				last_topTimestmap = buttonTimestamp[TOP_SLIDER];
			}
                }

                if (sampleButtonStatus & BOTTOM_SLIDER_MASK) {
			setNote(64, 1024);
			if (buttonTimestamp[BOTTOM_SLIDER] != last_bottomTimestmap) {
                        	/* make sure not on last menu item */
                        	if (selectedMenu->type != BACK) selectedMenu++;

				last_bottomTimestmap = buttonTimestamp[BOTTOM_SLIDER];
                	}
        	}
	}
}

#endif
