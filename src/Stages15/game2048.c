#include <stddef.h>
#include "game2048.h"
#include "badge15.h"
#include "touchCTMU.h"
#include "menu.h"
#include "./USB/usb_function_cdc.h"

extern badge_state b_state;//badge state structure
extern void (*menu_escape_cb)(void);
extern void (*runningApp)();

enum GAME_2048_STATES
{
    GAME_2048_WELCOME,
    GAME_2048_PLAY,
    GAME_2048_DRAW_GRID,
    GAME_2048_MENU,
    GAME_2048_GAME_WON,
    GAME_2048_GAME_OVER
};

#define BLUE 0b0000000000011111
#define GREEN 0b0000011111100000
#define RED 0b1111100000000000
#define WHITE 0b1111111111111111
#define BLACK 0b0000000000000000
#define TILE_SIZE 29
#define GAME_2048_STATE b_state.selected_object

unsigned char grid[4][4];
unsigned int score;

char vals[12][4] = {{' ', ' ', ' ', ' '}, {' ', ' ', '2', ' '},
                    {' ' ,' ', '4', ' '}, {' ' ,' ', '8', ' '},
                    {' ' ,'1', '6', ' '}, {' ' ,'3', '2', ' '},
                    {' ' ,'6', '4', ' '}, {' ' ,'1', '2', '8'},
                    {' ' ,'2', '5', '6'}, {' ' ,'5', '1', '2'},
                    {'1' ,'0', '2', '4'}, {'2' ,'0', '4', '8'}};

unsigned short color_2048_tile[12] = {
    0b0111101111101111,
    0b1110011011111000,
    0b1110011000110011,
    0b1110110101101110,
    0b1110110010001100,
    0b1110101111001011,
    0b1110101011100111,
    0b1110011001101101,
    0b1110011001001011,
    0b1110011000101001,
    0b1110011000000111,
    0b1110010111100101
};

void game_2048_Run()
{
    switch(GAME_2048_STATE)
    {
        case GAME_2048_WELCOME:
            game_2048_welcome();
            break;
        case GAME_2048_PLAY:
            game_2048_play();
            break;
        case GAME_2048_DRAW_GRID:
            printGrid();
            break;
        case GAME_2048_GAME_OVER:
            game_2048_game_over();
            break;
        case GAME_2048_GAME_WON:
            game_2048_game_won();
            break;
        case GAME_2048_MENU:
            game_2048_game_menu();
            break; 
        default:
            break;
    }
}

void game_2048_Init() {
    lastHandledTimestamp[BUTTON] = buttonTimestamp[BUTTON];
    unsigned short i;
    unsigned short j;

    //Holding the button seems to trigger much too quickly
    menu_escape_cb = NULL;//game_2048_onExit;

    //Init Grid
    for(i = 0; i < 4; i++)
        for(j = 0; j < 4; j++)
            grid[i][j] = 0;

    score = 0;

    placeTile(1);
    placeTile(1);

    b_state.current_state = GAME_2048;
    b_state.counter1 = 0;
    b_state.selected_object = GAME_2048_WELCOME;
    b_state.state_drawn = 0;
    runningApp = &game_2048_Run;

}

void game_2048_welcome()
{
    if(b_state.state_drawn == 0){
        clear_display_list();
        clearscreen(BLACK);
        writeline("2048",           4,      55, 33, GREEN);
        writeline("Press button",   12,     30, 53, GREEN);
        writeline("to start",       8,      38, 73, GREEN);

        b_state.state_drawn = 1;
    }

    if (BUTTON_PRESSED_AND_CONSUME)
    {
        GAME_2048_STATE = GAME_2048_DRAW_GRID;
        b_state.state_drawn = 0;
    }
}

void game_2048_play()
{
    if (BUTTON_PRESSED_AND_CONSUME)
    {
        GAME_2048_STATE = GAME_2048_MENU;
        b_state.state_drawn = 0;
        b_state.counter1 = 0;
    }
    else if(TOP_SLIDE_AND_CONSUME)
    {
        setNote(109, 2048);
        up();
        GAME_2048_STATE = GAME_2048_DRAW_GRID;
    }
    else if (BOTTOM_SLIDE_AND_CONSUME)
    {
        setNote(97, 2048);
        down();
        GAME_2048_STATE = GAME_2048_DRAW_GRID;
    }
    else if (LEFT_SLIDE_AND_CONSUME)
    {
        setNote(109, 2048);
        left();
        GAME_2048_STATE = GAME_2048_DRAW_GRID;
    }
    else if (RIGHT_SLIDE_AND_CONSUME)
    {
        setNote(97, 2048);
        right();
        GAME_2048_STATE = GAME_2048_DRAW_GRID;
    }
}

void game_2048_game_won()
{
    if(b_state.state_drawn == 0){

        clear_display_list();
        printGrid();
        filled_rectangle(20,20, 80, 50, BLACK);
        writeline("YOU WIN!",      8,      33, 33, GREEN);
        writeline("Press button",   12,     30, 53, GREEN);

        b_state.state_drawn = 1;
    }
    if (BUTTON_PRESSED_AND_CONSUME)
    {
        game_2048_Init();
        b_state.state_drawn = 0;
    }
}

void game_2048_game_menu()
{
    if(b_state.state_drawn == 0){
        clearscreen(BLACK);
        unsigned char i = 0;
        for(i = 0; i < 3; i++)
        {
            if (i == b_state.counter1)
                filled_rectangle(10, 11+(i*19), 108, 15, WHITE);
            else
                rectangle(10, 11+(i*19), 108, 15, GREEN);
        }
        writeline("Resume",     6,  37, 23, GREEN);
        writeline("Restart",    7,  37, 42, GREEN);
        writeline("Quit",       4,  37, 61, GREEN);

        b_state.state_drawn = 1;
    }

    if(BUTTON_PRESSED_AND_CONSUME)
    {
        if (b_state.counter1 == 0)
        {
            GAME_2048_STATE = GAME_2048_DRAW_GRID;
        }
        else if (b_state.counter1 == 1)
        {
            game_2048_Init();
            GAME_2048_STATE = GAME_2048_DRAW_GRID;
        }
        else if (b_state.counter1 == 2)
        {
            game_2048_onExit();
        }

        b_state.state_drawn = 0;
    }
    else if (TOP_SLIDE_AND_CONSUME)
    {
        if (b_state.counter1 == 0)
            b_state.counter1 = 2;
        else
            b_state.counter1--;

        b_state.state_drawn = 0;
    }
    else if (BOTTOM_SLIDE_AND_CONSUME)
    {
        if (b_state.counter1 == 2)
            b_state.counter1 = 0;
        else
            b_state.counter1++;

        b_state.state_drawn = 0;
    }
}

void game_2048_game_over()
{
    if(b_state.state_drawn == 0){

        clear_display_list();
        printGrid();
        filled_rectangle(20,20, 80, 50, BLACK);
        writeline("GAME OVER",      9,      33, 33, GREEN);
        writeline("Press button",   12,     30, 53, GREEN);

        b_state.state_drawn = 1;
    }
    if (BUTTON_PRESSED_AND_CONSUME)
    {
        game_2048_Init();
        b_state.state_drawn = 0;
    }
}

void game_2048_onExit(){

    clear_display_list();
    b_state.state_drawn = 0;
    b_state.selected_object = 0;
    b_state.counter1 = 0;
    b_state.counter2 = 0;
    b_state.current_state = b_state.previous_state;
    b_state.current_state = MAIN;
    runningApp = &returnToMenus;
}

void up() {
    if (moveUp())
        placeTile(0);
}

void down() {
    if (moveDown())
        placeTile(0);
}

void left() {
    if (moveLeft())
        placeTile(0);
}

void right() {
    if (moveRight())
        placeTile(0);
}

unsigned char random(unsigned char min, unsigned char max)
{
    return ((ReadCoreTimer() & 0xff) % (max-min)) + min;
}

void placeTile(unsigned char val) {
    if (val==0)
    {
        val = random(0, 9);
        if (val >= 2)
            val = 1;
        else
            val = 2;
    }

    unsigned char x = random(0, 15);
    unsigned char k = 0;
    unsigned char i;
    unsigned char j;

    while(k <= x)
    {
        for (i = 0; i < 4; i++) {
            for (j = 0; j < 4; j++) {
                if (grid[i][j] == 0)
                {
                    if (x == k)
                    {
                        grid[i][j] = val;
                        k = x + 1;
                    }
                    else
                    {
                        k++;
                    }
                }
            }
        }
    }

    //Check for winning
    if (hasWon())
        b_state.selected_object = GAME_2048_GAME_WON;
    
    if (!canMove())
        b_state.selected_object = GAME_2048_GAME_OVER;
     
}

char buf[20];

void printScore(){
    unsigned char i = 0;;
    char tmp[10] = {0};
    strcpy(&buf, "Score: \0");
    itoa(&tmp, score, 10);
    strcat(&buf, &tmp);

    while(buf[i] != '\0')
        i++;

    writeline(&buf, i, 10, 10, BLACK);
}

void printGrid() {
    unsigned char i, j, x, y, val;
    clearscreen(WHITE);
    printScore();

    for(i = 0; i < 4; i++)
    {
        for(j = 0; j < 4; j++)
        {
            x = (i*TILE_SIZE)+5;
            y = (j*TILE_SIZE)+12;
            val = grid[i][j];
            filled_rectangle(x+1, y+1, TILE_SIZE-3, TILE_SIZE-2, color_2048_tile[val]);
            rectangle(x, y, TILE_SIZE-1, TILE_SIZE, BLACK);
            buf[0] = vals[val][0];
            buf[1] = vals[val][1];
            buf[2] = vals[val][2];
            buf[3] = vals[val][3];
            writeline(&buf, 4, x+8, y+20, BLACK);//(val <=2) ? BLACK : WHITE);
        }
    }
    GAME_2048_STATE = GAME_2048_PLAY;
}

bool moveUp() {
    bool moved = false;

    unsigned short i;
    unsigned short j;
    unsigned short k;

    //move
    for(i=0;i<4;i++){
        for(j=0;j<4;j++){
            if(grid[i][j] == 0){
                for(k=j+1;k<4;k++){
                    if(grid[i][k] != 0){
                        grid[i][j]=grid[i][k];
                        grid[i][k]=0;
                        moved = true;
                        break;
                    }
                }
            }
        }
    }

    //combine
    for(i=0;i<4;i++){
        for (j = 0; j < 3; j++) {
            if (grid[i][j] != 0 && grid[i][j] == grid[i][j + 1]) {
                grid[i][j]++;
                grid[i][j + 1] = 0;
                score += ((grid[i][j])-1) * (1 << grid[i][j]);
                moved = true;
            }
        }
    }

    //move again
    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            if (grid[i][j] == 0) {
                for (k = j + 1; k < 4; k++) {
                    if (grid[i][k] != 0) {
                        grid[i][j] = grid[i][k];
                        grid[i][k] = 0;
                        moved = true;
                        break;
                    }
                }
            }
        }
    }

    return moved;
}

bool moveDown() {
    bool moved = false;

    char i;
    char j;
    char k;

    //move
    for (i = 0; i < 4; i++){
        for (j = 3; j >= 0; j--) {
            if (!grid[i][j] != 0) {
                for (k = j - 1; k >= 0; k--)
                    if (grid[i][k] != 0) {
                        grid[i][j] = grid[i][k];
                        grid[i][k] = 0;
                        moved = true;
                        break;
                    }
            }
        }
    }

    //combine
    for(i=0;i<4;i++){
        for (j = 3; j > 0; j--) {
            if (grid[i][j] != 0 && grid[i][j] == grid[i][j - 1]) {
                grid[i][j]++;
                grid[i][j - 1] = 0;
                score += ((grid[i][j])-1) * (1 << grid[i][j]);
                moved = true;
            }
        }
    }

    //move again
    for (i = 0; i < 4; i++) {
        for (j = 3; j >= 0; j--) {
            if (!grid[i][j] != 0) {
                for (k = j - 1; k >= 0; k--)
                {
                    if (grid[i][k] != 0) {
                        grid[i][j] = grid[i][k];
                        grid[i][k] = 0;
                        moved = true;
                        break;
                    }
                }
            }
        }
    }

    return moved;
}

bool moveLeft() {
    bool moved = false;

    unsigned short i;
    unsigned short j;
    unsigned short k;

    //move
    for(i=0;i<4;i++){
        for (j = 0; j < 4; j++) {
            if (!grid[j][i] != 0) {
                for (k = j + 1; k < 4; k++) {
                    if (grid[k][i] != 0) {
                        grid[j][i] = grid[k][i];
                        grid[k][i] = 0;
                        moved = true;
                        break;
                    }
                }
            }
        }
    }
    //combine
    for (i = 0; i < 4; i++) {
        for (j = 0; j < 3; j++) {
            if (grid[j][i] != 0 && grid[j][i] == grid[j + 1][i]) {
                grid[j][i]++;
                grid[j + 1][i] = 0;
                score += ((grid[j][i])-1) * (1 << grid[j][i]);
                moved = true;

            }
        }
    }

    //move again
    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            if (!grid[j][i] != 0) {
                for (k = j + 1; k < 4; k++) {
                    if (grid[k][i] != 0) {
                        grid[j][i] = grid[k][i];
                        grid[k][i] = 0;
                        moved = true;
                        break;
                    }
                }
            }
        }
    }

    return moved;
}

bool moveRight() {
    bool moved = false;

    char i;
    char j;
    char k;

    //move
    for(i=0;i<4;i++){
        for (j = 3; j >= 0; j--) { 
            if (!grid[j][i] != 0) {
                for (k = j - 1; k >= 0; k--) { 
                    if (grid[k][i] != 0) {
                        grid[j][i] = grid[k][i];
                        grid[k][i] = 0;
                        moved = true;
                        break;
                    }
                }
            }
        }
    }
    
    //combine
    for(i=0;i<4;i++){
        for (j = 3; j > 0; j--) {
            if (grid[j][i] && grid[j][i] == grid[j - 1][i]) {
                grid[j][i]++;
                grid[j - 1][i] = 0;
                //plus += (((fakeLog2(grid[j][i])) - 1) * grid[j][i]);
                score += ((grid[j][i])-1) * (1 << grid[j][i]);
                moved = true;
            }
        }
    }

    //move again
    for (i = 0; i < 4; i++) {
        for (j = 3; j >= 0; j--) {
            if (!grid[j][i] != 0) {
                for (k = j - 1; k >= 0; k--) {
                    if (grid[k][i] != 0) {
                        grid[j][i] = grid[k][i];
                        grid[k][i] = 0;
                        moved = true;
                        break;
                    }
                }
            }
        }
    }
    
    return moved;
}

bool hasWon()
{
    unsigned char i, j;
    for(i = 0; i < 4; i++){
        for(j = 0; j < 4; j++){
            if(grid[i][j] == 11){
                return true;
            }
        }
    }
    return false;
}

bool canMove(){
    
    unsigned short x;
    unsigned short y;

    for (x = 0; x < 4; x++) {
        for (y = 0; y < 4; y++){
            if (grid[x][y] == 0)
                return true;
            else if (y < 3 && grid[x][y] == grid[x][y + 1])
                return true;
            else if (x < 3 && grid[x][y] == grid[x + 1][y])
                return true;
        }
    }

    return false;
}