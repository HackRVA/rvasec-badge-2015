#include <stdbool.h>

#ifndef GAME_2048_H
#define	GAME_2048_H

void game_2048_Init();
void game_2048_Run();
void game_2048_onExit();

bool moveUp();
bool moveDown();
bool moveLeft();
bool moveRight();
bool hasWon();
bool canMove();

#endif
