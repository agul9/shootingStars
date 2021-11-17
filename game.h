// Alien Struct
typedef struct  {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int cdel;
	int height;
	int width;
	int bulletTimer;
	int collisionTimer;
} PLAYER;

// Bullet Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int height;
	int width;
	unsigned short color;
	int active;
	int erased;
} BULLET;

// star struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int cdel;
	int height;
	int width;
	int active;
	int erased;
} STAR;


// Constants
#define BULLETCOUNT 5

#define STARCOUNT 5


// Variables
extern PLAYER alien;

extern BULLET bullets[BULLETCOUNT];

extern int timer;
extern int livesLeft;
extern int scoreCounter;

// Prototypes
void initGame();
void updateGame();
void drawGame();

void initAlien();
void updateAlien();
void drawAlien();

void initStars();
void updateStars(STAR *);
void drawStars(STAR *);
void fallingStars();

void initBullets();
void fireBullet();
void updateBullet(BULLET *);
void drawBullet(BULLET *);

void drawScore();
