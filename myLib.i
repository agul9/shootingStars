# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1




typedef unsigned short u16;
# 25 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 42 "myLib.h"
void setPixel(int col, int row, unsigned short color);
void drawRect(int col, int row, int width, int height, unsigned short color);
void fillScreen(unsigned short color);
void drawLine(int, int, int, unsigned short);
void drawVLine(int, int, int, unsigned short);
void drawLeftDiagLine(int, int, int, unsigned short);
void drawRightDiagLine(int, int, int, unsigned short);


void waitForVBlank();
# 71 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 81 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "myLib.c" 2

volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int col, int row, unsigned short color) {
    videoBuffer[((row)*(240)+(col))] = color;
}

void drawRect(int col, int row, int width, int height, unsigned short color) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            setPixel(col + j, row + i, color);
        }
    }
}

void drawLine(int col, int row, int length, unsigned short color) {
    for (int i = 0; i < length; i++) {
        setPixel(col + i, row, color);
    }
}

void drawVLine(int col, int row, int length, unsigned short color) {
    for (int i = 0; i < length; i++) {
        setPixel(col, row + i, color);
    }
}

void drawLeftDiagLine(int col, int row, int length, unsigned short color) {
    int j = 0;
    for (int i = 0; i < length; i++) {
        drawLine(col + i, row - j, 1, color);
        j++;
    }
}

void drawRightDiagLine(int col, int row, int length, unsigned short color) {
    int j = 0;
    for (int i = 0; i < length; i++) {
        drawLine(col - i, row - j, 1, color);
        j++;
    }
}

void fillScreen(unsigned short color) {
    for(int i = 0; i < 240 * 160; i++) {
        videoBuffer[i] = color;
    }
}

void waitForVBlank() {
    while((*(volatile unsigned short *)0x4000006) > 160);
    while((*(volatile unsigned short *)0x4000006) < 160);
}

int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {
    return
    rowA + heightA >= rowB
    && rowA <= rowB + heightB
    && colA + widthA >= colB
    && colA <= colB + widthB;
}
