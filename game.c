#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Variables
PLAYER alien;

BULLET bullets[BULLETCOUNT];

STAR stars[STARCOUNT];

int timer;
int livesLeft = 5;
int scoreCounter;


// Initialize the game
void initGame() {

	initAlien();

	initBullets();

	initStars();
}

// Updates the game each frame
void updateGame() {

	updateAlien();

	for (int i = 0; i < BULLETCOUNT; i++) {
		updateBullet(&bullets[i]);
	}
	
	for (int i = 0; i < STARCOUNT; i++) {
		updateStars(&stars[i]);
	}
}

// Draws the game each frame
void drawGame() {

	drawScore();
	drawAlien();

	// Draw all the bullets
	for (int i = 0; i < BULLETCOUNT; i++) {
		drawBullet(&bullets[i]);
	}
	// Draw all the stars
	for (int i = 0; i < STARCOUNT; i++) {
		drawStars(&stars[i]);
	}

}

//initialize the player
void initAlien() {
	alien.row = 140;
	alien.col = 118;
	alien.oldRow = alien.row;
	alien.oldCol = alien.col;
	alien.cdel = 1;
	alien.height = 18;
	alien.width = 15;
	alien.bulletTimer = 20;
}


void updateAlien() {
	// decrement timer for however long the alien and star is colliding
	if (alien.collisionTimer > 0) {
		alien.collisionTimer--;
	}

 	// Move the alien
	if (BUTTON_HELD(BUTTON_LEFT)
		&& alien.col >= alien.cdel) {

		alien.col -= alien.cdel;

	} else if (BUTTON_HELD(BUTTON_RIGHT)
		&& alien.col + alien.width - 1 < SCREENWIDTH - alien.cdel) {

		alien.col += alien.cdel;

	} else if (BUTTON_HELD(BUTTON_UP) && alien.row > 120) {
		alien.row -= alien.cdel;
	} else if (BUTTON_HELD(BUTTON_DOWN) && alien.row < 140) {
		alien.row += alien.cdel;
	}

 	// Fire bullets
	if (BUTTON_PRESSED(BUTTON_B) && alien.bulletTimer >= 20) {
 		fireBullet();
		alien.bulletTimer = 0;
	}
	alien.bulletTimer++;

	// keep the stars falling
	if (timer%2 == 0) {
		fallingStars();
	}
	timer++;
}


void drawAlien() {

	// erasing alien at previous location
	drawRect(alien.oldCol, alien.oldRow, 15, 15, BLACK);
    drawVLine(alien.oldCol + 3, alien.oldRow - 3, 3, BLACK);
    drawVLine(alien.oldCol + 10, alien.oldRow - 3, 3, BLACK);
    drawRect(alien.oldCol + 2, alien.oldRow - 6, 3, 3, BLACK);
    drawRect(alien.oldCol + 8, alien.oldRow - 6, 3, 3, BLACK);

    drawRect(alien.oldCol + 2, alien.oldRow + 3, 4, 4, BLACK);
    drawRect(alien.oldCol + 10, alien.oldRow + 3, 4, 4, BLACK);
    drawRect(alien.oldCol + 3, alien.oldRow + 4, 3, 3, BLACK);
    drawRect(alien.oldCol + 11, alien.oldRow + 4, 3, 3, BLACK);

    drawLine(alien.oldCol + 4, alien.oldRow + 11, 8, BLACK);
    drawVLine(alien.oldCol + 4, alien.oldRow + 9, 2, BLACK);
    drawVLine(alien.oldCol + 11, alien.oldRow + 9, 2, BLACK);

	//drawing alien at new location
	drawRect(alien.col, alien.row, 15, 15, PINK);
    drawVLine(alien.col + 3, alien.row - 3, 3, PINK);
    drawVLine(alien.col + 10, alien.row - 3, 3, PINK);
    drawRect(alien.col + 2, alien.row - 6, 3, 3, GREEN);
    drawRect(alien.col + 8, alien.row - 6, 3, 3, GREEN);

    drawRect(alien.col + 2, alien.row + 3, 4, 4, WHITE);
    drawRect(alien.col + 10, alien.row + 3, 4, 4, WHITE);
    drawRect(alien.col + 3, alien.row + 4, 3, 3, BLACK);
    drawRect(alien.col + 11, alien.row + 4, 3, 3, BLACK);

    drawLine(alien.col + 4, alien.row + 11, 8, BLACK);
    drawVLine(alien.col + 4, alien.row + 9, 2, BLACK);
    drawVLine(alien.col + 11, alien.row + 9, 2, BLACK);

	alien.oldRow = alien.row;
	alien.oldCol = alien.col;
}

// Initialize the pool of bullets
void initBullets() {
	for (int i = 0; i < BULLETCOUNT; i++) {
		bullets[i].height = 2;
		bullets[i].width = 1;
		bullets[i].row = -bullets[i].height;
		bullets[i].col = 0;
		bullets[i].oldRow = alien.row;
		bullets[i].oldCol = alien.col;
		bullets[i].rdel = -3;
		bullets[i].color = WHITE;
		bullets[i].active = 0;
	}
}

// Spawn a bullet
void fireBullet() {

	// Find the first inactive bullet, initialize it, and set it active
	for (int i = 0; i < BULLETCOUNT; i++) {
		if (bullets[i].active == 0) {
			bullets[i].row = alien.row;
			bullets[i].col = alien.col + (alien.width/2) + (bullets[i].width/2);
			bullets[i].active = 1;
			bullets[i].erased = 0;
			break;
		}
	}
}

// Handle every-frame actions of a bullet
void updateBullet(BULLET* b) {
	if (b->active) {
		b->row--;
	}
	if (b->row <= 0) {
		b->active = 0;
	}
}

// Draw a bullet
void drawBullet(BULLET* b) {
	if (b->active) {
		drawRect(b->oldCol, b->oldRow, b->width, b->height, BLACK);
		drawRect(b->col, b->row, b->width, b->height, b->color);
	} else if (!b->erased) {
		drawRect(b->oldCol, b->oldRow, b->width, b->height, BLACK);
		b->erased = 1;
	}
	b->oldRow = b->row;
	b->oldCol = b->col;
}

void drawStars(STAR *s) {

	if (s->active) {
		//erase star
		drawRect(s->oldCol, s->oldRow, 8, 8, BLACK);

		//draw star
		drawLine(s->col, s->row + 4, 8, WHITE);
    	drawVLine(s->col + 4, s->row, 8, WHITE);
    	drawLeftDiagLine(s->col, s->row + 8, 8, WHITE);
    	drawRightDiagLine(s->col + (8 - 1), s->row + 8, 8, WHITE);
	} else if (!s->erased) {
		//erase star
		drawRect(s->oldCol, s->oldRow, 8, 8, BLACK);
		s->erased = 1;
	}
	s->oldRow = s->row;
	s->oldCol = s->col;
}

void updateStars(STAR *s) {
	//keep stars falling
	if (s->active) {
		s->row++;
	}
	if (s->row >= 160) {
		s->active = 0;
	}

	//check for any collisions with stars
	for (int i = 0; i < BULLETCOUNT; i++) {
		if (bullets[i].active == 1) {
			if (collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, s->col, s->row, s->width, s->height)) {
				bullets[i].active = 0;
				s->active = 0;
				scoreCounter++;
			}
		}
	}

	if (collision(alien.col, alien.row, alien.width, alien.height, s->col, s->row, s->width, s->height)) {
		if (alien.collisionTimer == 0) { // to make sure lives only decrements once after collision, not multiple times while colliding
			alien.collisionTimer = 20;
			s->active = 0;
			livesLeft--;
		}
	}
}

//randomize the starts starting position
void initStars() {
	for (int i = 0; i < STARCOUNT; i++) {
		stars[i].row = -(rand() % 50);
		stars[i].col = rand() % 230;
		stars[i].oldRow = stars[i].row;
		stars[i].oldCol = stars[i].col;
		stars[i].rdel = 1;
		stars[i].cdel = 1;
		stars[i].height = 8;
		stars[i].width = 8;
		stars[i].active = 1;
		stars[i].erased = 0;
	}
}

//finds inactive star and makes it start falling again
void fallingStars() {
	for (int i = 0; i < STARCOUNT; i++) {
		if (stars[i].active == 0) {
			stars[i].row = -(rand() % 50);;
			stars[i].col = rand() % 230;
			stars[i].active = 1;
			stars[i].erased = 0;
		}
	}
}

void drawScore() {
	//erase previous score
	drawRect(2, 145, 60, 15, BLACK);
	drawRect(170, 145, 60, 15, BLACK);

	//draw score counter
	if (scoreCounter == 0) {
		drawString(2, 145, "score: 0", GRAY);
	}
	if (scoreCounter == 1) {
		drawString(2, 145, "score: 1", GRAY);
	}
	if (scoreCounter == 2) {
		drawString(2, 145, "score: 2", GRAY);
	}
	if (scoreCounter == 3) {
		drawString(2, 145, "score: 3", GRAY);
	}
	if (scoreCounter == 4) {
		drawString(2, 145, "score: 4", GRAY);
	}
	if (scoreCounter == 5) {
		drawString(2, 145, "score: 5", GRAY);
	}
	if (scoreCounter == 6) {
		drawString(2, 145, "score: 6", GRAY);
	}
	if (scoreCounter == 7) {
		drawString(2, 145, "score: 7", GRAY);
	}
	if (scoreCounter == 8) {
		drawString(2, 145, "score: 8", GRAY);
	}
	if (scoreCounter == 9) {
		drawString(2, 145, "score: 9", GRAY);
	}
	if (scoreCounter == 10) {
		drawString(2, 145, "score: 10", GRAY);
	}

	//draw lives left
	if (livesLeft == 5) {
		drawString(170, 145, "lives: 5", GRAY);
	}
	if (livesLeft == 4) {
		drawString(170, 145, "lives: 4", GRAY);
	}
	if (livesLeft == 3) {
		drawString(170, 145, "lives: 3", GRAY);
	}
	if (livesLeft == 2) {
		drawString(170, 145, "lives: 2", GRAY);
	}
	if (livesLeft == 1) {
		drawString(170, 145, "lives: 1", GRAY);
	}
	if (livesLeft == 0) {
		drawString(170, 145, "lives: 0", GRAY);
	}
}