/*
 * File:   connect4.c
 * Author: Sean
 *
 * Created on April 6, 2015, 1:02 PM
 */

#include "connect4.h"
#include "badge15.h"

unsigned char grid[7][6];

void connect4_Init() {
    unsigned char i;
    unsigned char j;

    //Init Grid
    for(i = 0; i < 6; i++)
        for(j = 0; j < 6; j++)
            grid[i][j] = 0;

    runningApp = &connect4_printBoard;

}

void connect4_Wait() {
    if (BUTTON_PRESSED_AND_CONSUME)
    {
        runningApp = &returnToMenus;
    }
    else if(TOP_SLIDE_AND_CONSUME)
    {
        setNote(109, 2048);
    }
    else if (BOTTOM_SLIDE_AND_CONSUME)
    {
        setNote(97, 2048);
    }
    else if (LEFT_SLIDE_AND_CONSUME)
    {
        setNote(109, 2048);
    }
    else if (RIGHT_SLIDE_AND_CONSUME)
    {
        setNote(97, 2048);
    }
}

void connect4_printBoard() {
    unsigned char i, j, x, y, val;
    clearscreen(0b0011100111111111);

    filled_rectangle(3, 21, 121, 104, 0b1111111111100000);

    show_sprite(CHIPSPRITE, 4, 5, 1);

    for(i = 0; i < 7; i++)
    {
        for(j = 0; j < 6; j++)
        {
            x = (i*16)+i+5;
            y = (j*16)+j+23;
            val = grid[i][j];
            show_sprite(CHIPSPRITE, y, x, grid[i][j]);
        }
    }

    runningApp = &connect4_Wait;
}