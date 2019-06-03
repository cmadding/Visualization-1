class Player {
  float x, y;
  PImage spriteSheet;
  PImage [][] movement;
  boolean inMotion;
  int currentDirection;
  float currentFrame;
  final int DOWN = 0, LEFT = 1, RIGHT = 2, UP = 3;

  Player() {
    inMotion = false;
    currentDirection = 1;
    currentFrame = 0;
    x=340;
    y=205;

    setupSprites();
  }

  void setupSprites() {
    movement = new PImage[4][3];
    spriteSheet = loadImage("character_sprites.png");
    for (int i = 0; i < 3; i++) {
      //spriteSheet.get(x, y, width, height);
      movement[0][i] = spriteSheet.get(99 + 32 * i, 0, 27, 32);
      movement[1][i] = spriteSheet.get(99 + 32 * i, 32, 27, 32);
      movement[2][i] = spriteSheet.get(99 + 32 * i, 64, 27, 32);
      movement[3][i] = spriteSheet.get(99 + 32 * i, 96, 27, 32);
    }
  }

  void drawPlayer() {

    if (inMotion)
      image(movement[currentDirection][int(currentFrame)], x, y);
    else
      image(movement[currentDirection][0], x, y);
  }
  void updatePlayer(int xDelta, int yDelta ) {
    currentFrame = (currentFrame + 0.2) % 3;
    inMotion = true;

    if (xDelta == 0 && yDelta == 0)
      inMotion = false;
    else if (xDelta == -1)
      currentDirection = LEFT;
    else if (xDelta == 1)
      currentDirection = RIGHT;
    else if (yDelta == -1)
      currentDirection = UP;
    else if (yDelta == 1)
      currentDirection = DOWN;

    x = x + xDelta;
    y = y + yDelta;

    if (isPlayerOffScreen(x, y)) {
      x = x - xDelta;
      y = y - yDelta;
    }
  }

  boolean isPlayerOffScreen(float x, float y) {
    if (x < 0 || x > width - 27 ||
      y < 0 || y > height -32)
      return true;
    return false;
  }
}
