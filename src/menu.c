#define NULL 0

enum attrib {
   RED_BG=0,  /* color/text attrib */
   GREEN_BG,  /* color/text attrib */
   BLUE_BG,  /* color/text attrib */
};

enum type {
   MORE=0, /* if the menu is too long to fit */
   TEXT,   /* text to display */
   BACK,    /* return to previous menu */
   MENU,    /* sub menu type */
   FUNCTION /* c function */
};

struct menu_t {
   char name[16];
   unsigned char attrib;
   unsigned char type;
   union {                      /* when initing the union, coerce non void data to a menu_t to keep compiler from whining */
      struct menu_t *menu;
      void (*func)();
      void *generic;
   } data;
};

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

struct menu_t *G_menu = NULL ; // current menu item in stack

#define MORE_INC 4

#define MAX_MENU_DEPTH 8
static unsigned char G_menuCnt=0; // index for G_menuStack
struct menu_t *G_menuStack[MAX_MENU_DEPTH] = { main_m }; // track user traversing menus

/*
cc -o menu menu.c -DMAINMENU
*/

#ifdef MAINMENU
#include <stdio.h>
char spaces[16] = "                ";

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
enum input_mask {
   L_LEFT =  0b00001,
   L_RIGHT = 0b00010,
   R_UPPER = 0b00100,
   R_LOWER = 0b01000,
   BUTTON  = 0b10000,
};

/* for this increment the units are menu items */
#define PAGESIZE 8
extern short int sampleButtonStatus;  // Bit field of buttons that are pressed

void menus() {
        static struct menu_t *currMenu = NULL; /* init */

        if (currMenu == NULL) currMenu = G_menuStack[0];

        if (sampleButtonStatus & BUTTON) { /* click */
	   struct menu_t *tmp_menu;

	   switch (currMenu->type) {
	       case MORE: /* jump to next page of menu */
		   currMenu += PAGESIZE;
		   break;

	       case BACK: /* return from menu */
		   if (G_menuCnt == 0) return; /* stack is empty, error or main menu */
		   G_menuCnt--; 
		   currMenu = G_menuStack[G_menuCnt] ;
		   break;

	       case TEXT: /* does nothing if clicked */
		   currMenu++;
		   break;

	       case MENU: /* drills down into menu if clicked */
		   tmp_menu = currMenu->data.menu; /* go into this menu */
		   currMenu++;                        /* advance past this item so when we return we are position for next loop */
		   G_menuStack[G_menuCnt++] = currMenu; /* push onto stack  */
		   if (G_menuCnt == MAX_MENU_DEPTH) G_menuCnt--; /* too deep, undo */
		   currMenu = tmp_menu; /* go into menu */
		   break;

	       case FUNCTION: /* call the function pointer if clicked */
		   (*currMenu->data.func)();
		   currMenu++;
		   break;

	       default:
		   break;
	   }

	   /* clear screen */
	   tmp_menu = currMenu;
	   while (tmp_menu->type != BACK) {
		writeline("%s\n", tmp_menu->name); /* need to use attributes */
		tmp_menu++;
	   }
        }
        else {
                if (sampleButtonStatus & R_UPPER) {
                        /* make sure not on first menu item */
                        if (currMenu > G_menuStack[G_menuCnt]) currMenu--;
                }

                if (sampleButtonStatus & R_LOWER) {
                        /* make sure not on last menu item */
                        if (currMenu->type != BACK) currMenu++;
                }
        }
}

#endif
