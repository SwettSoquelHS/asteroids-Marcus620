class Bullet {
  float x_pos;
  float y_pos;

  Bullet(int x, int y) {
  }

  void show() {
    fill(255, 0, 0);
    rect(x_pos, y_pos, 15, 15);

    x_pos = x_pos + 5;

    if (x_pos > 765) {
      x_pos = -10;
    }
    if (x_pos < -15) {
      x_pos = 750;
    }
    if (y_pos > 565) {
      y_pos = -10;
    }
    if (y_pos < -15) {
      y_pos = 565;
    }
  }
}
