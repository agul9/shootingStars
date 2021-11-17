#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "text.h"

// Prototypes
void initialize();
void start();
void game();
void pause();
void win();
void lose();
void goToStart();
void goToGame();
void goToPause();
void goToWin();
void goToLose();
void drawStar(int, int);
// States
enum {START, GAME, PAUSE, WIN, LOSE};
int state;


// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;
                
        // State Machine
        switch(state) {
            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
    }
}

// Sets up GBA
void initialize() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;
    goToStart();

}


// state functions
void start() {
    if (state == START) {
        seed++;
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
        srand(seed);
        initGame();
    }
}

void game() {
    updateGame();
    waitForVBlank();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }
    if (livesLeft == 0) {
        goToLose();
        livesLeft = 5;
        scoreCounter = 0;
    }
    if (scoreCounter == 10) {
        goToWin();
        livesLeft = 3;
        scoreCounter = 0;
    }
}

void pause() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void win() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void lose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }

}


//state transition functions
void goToStart() {
    fillScreen(BLACK);

    drawStar(60, 45);
    drawStar(75, 45);
    drawStar(90, 45);
    drawStar(105, 45);
    drawStar(120, 45);
    drawStar(135, 45);
    drawStar(150, 45);
    drawStar(165, 45);

    drawString(75, 60, "SHOOTING STARS", PINK);
    drawString(60, 70, "Press START to play", PINK);

    drawStar(60, 85);
    drawStar(75, 85);
    drawStar(90, 85);
    drawStar(105, 85);
    drawStar(120, 85);
    drawStar(135, 85);
    drawStar(150, 85);
    drawStar(165, 85);

    state = START;
}

void goToGame() {
    fillScreen(BLACK);
    state = GAME;
}

void goToPause() {
    fillScreen(GOLD);
    drawString((240-(6*6))/2, 80, "Paused", BLACK);
    state = PAUSE;
}

void goToWin() {
    fillScreen(GREEN);
    drawString((240-(7*6))/2, 80, "You Win!", BLACK);
    state = WIN;
}

void goToLose() {
    fillScreen(RED);
    drawString((240-(8*6))/2, 80, "You Lose!", BLACK);
    state = LOSE;
} 

void drawStar(int col, int row) {
    drawLine(col, row + 4, 8, WHITE);
    drawVLine(col + 4, row, 8, WHITE);
    drawLeftDiagLine(col, row + 8, 8, WHITE);
    drawRightDiagLine(col + (8 - 1), row + 8, 8, WHITE);
}