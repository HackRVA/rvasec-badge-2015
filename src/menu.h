#ifndef menu_h
#define menu_h
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

void display_menu(struct menu_t *menu, struct menu_t *selected);

extern struct menu_t *currMenu;
extern struct menu_t *selectedMenu;
extern unsigned int buttonTimestamp[];
#endif
