#define NULL 0

enum {
   MORE=0,
   BACK=1,
   MENU=2,
   FUNCTION=4,
   RED_BG=8,
   GREEN_BG=16,
   BLUE_BG=32
};

struct menu_t {
   char name[16];
   unsigned char attrib;
   void *data;
};

struct menu_t breakfast_m[] = {
   {"yummy", GREEN_BG|BACK, NULL},
};

struct menu_t welcome_m[] = {
   {"yo", GREEN_BG|BACK, NULL},
};

struct menu_t david_m[] = {
   {"david m", GREEN_BG|BACK, NULL},
};

struct menu_t break1010_m[] = {
   {"break time", GREEN_BG|BACK, NULL},
};

struct menu_t nick_m[] = {
   {"nick m", GREEN_BG|BACK, NULL},
};

struct menu_t paul_m[] = {
   {"paul", GREEN_BG|BACK, NULL},
};

struct menu_t break1050_m[] = {
   {"break1050", GREEN_BG|BACK, NULL},
};

struct menu_t lunch_m[] = {
   {"lunch", GREEN_BG|BACK, NULL},
};

struct menu_t day1_m[] = {
   {" 8:00 Breakfast", GREEN_BG, breakfast_m},
   {" 9:00 Welcome", GREEN_BG, welcome_m},
   {"10:00 David", GREEN_BG, david_m},
   {"11:00 Break", GREEN_BG, break1010_m},
   {"11:30 Nick", GREEN_BG, nick_m},
   {"11:30 Paul", GREEN_BG, paul_m},
   {"11:30 Break", GREEN_BG, break1050_m},
   {"11:30 Lunch", GREEN_BG, lunch_m},
   {"back", GREEN_BG|BACK, NULL},
};

struct menu_t day2_m[] = {
   {" 8:00 Breakfast", GREEN_BG, breakfast_m},
   {" 9:00 Welcome", GREEN_BG, welcome_m},
   {"10:00 David", GREEN_BG, david_m},
   {"11:00 Break", GREEN_BG, break1010_m},
   {"11:30 Nick", GREEN_BG, nick_m},
   {"11:30 Paul", GREEN_BG, paul_m},
   {"11:30 Break", GREEN_BG, break1050_m},
   {"11:30 Lunch", GREEN_BG, lunch_m},
   {"back", GREEN_BG|BACK, NULL},
};


struct menu_t schedule_m[] = {
   {"day1", GREEN_BG|MENU, day1_m},
   {"day2", GREEN_BG|MENU, day2_m},
   {"back", GREEN_BG|BACK, NULL},
};

void firewall_cb();
void bowling_cb();
void hacker_cb();
void aliens_cb();

struct menu_t games_m[] = {
   {"Firewall",	GREEN_BG|MENU, firewall_cb},
   {"Bowling",	GREEN_BG|MENU, bowling_cb},
   {"Hacker",	GREEN_BG|MENU, hacker_cb},
   {"Aliens",	GREEN_BG|MENU, aliens_cb},
   {"more",	GREEN_BG|MORE, NULL},
   {"back",	GREEN_BG|BACK, NULL},
};

void led_cb();
void contrast_cb();
void timedate_cb();
void screensaver_cb();
void backlight_cb();

struct menu_t settings_m[] = {
   {"led",	GREEN_BG|FUNCTION, led_cb},
   {"contrast",	GREEN_BG|FUNCTION, contrast_cb},
   {"time & date",GREEN_BG|FUNCTION, timedate_cb},
   {"screensaver",GREEN_BG|FUNCTION, screensaver_cb},
   {"backlight",GREEN_BG|FUNCTION, backlight_cb},
   {"back",	GREEN_BG|BACK, NULL},
};

struct menu_t achievements_m[] = {
   {"back", GREEN_BG|BACK, NULL},
};

struct menu_t main_m[] = {
   {"Schedule",    GREEN_BG|MENU, schedule_m},
   {"Games",       GREEN_BG|MENU, games_m},
   {"Settings",    GREEN_BG|MENU, settings_m},
   {"Achievments", GREEN_BG|MENU, achievements_m}
} ;

static struct menu_t *G_menu = main_m;
struct menu_t menu_stack[8] = {NULL};

main() {
   while(G_menu->data != NULL) {
      next_m = G_menu->
   }
}
