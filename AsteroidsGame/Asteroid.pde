/*
  Asteroid class
 Should extend Mover class and implement show.
 
 Initially, your asteroid may just be a simple circle or square
 but the final program should use "beginShap(), vertex(), and endShape()"
 to render the asteroid.
 */
class Asteroid  {   
  int ran_size =(int) random(1, 4);
  int size;
  float x_ran, y_ran;
  float ran_direction = (int) random (1, 5);

  Asteroid(int x, int y) {
    x_ran = (int)(Math.random() * 750);
    y_ran = (int)(Math.random() * 550);
  }

  void show() {
    fill(#441B09);
    stroke(1);
    if (ran_size == 1) {
      size = 30;
    }
    if (ran_size == 2) {
      size = 55;
    }
    if (ran_size == 3) {
      size = 85;
    }
    ellipse(x_ran, y_ran, size, size);

    if (ran_direction == 1) {
      x_ran = x_ran + .5;
      y_ran = y_ran + .5;
    }
    if (ran_direction == 2) {
      x_ran = x_ran - .5;
      y_ran = y_ran - .5;
    }
    if (ran_direction == 3) {
      x_ran = x_ran + .5;
      y_ran = y_ran - .5;
    }
    if (ran_direction == 4) {
      x_ran = x_ran - .5;
      y_ran = y_ran + .5;
    }


    if (x_ran > 765) {
      x_ran = -10;
    }
    if (x_ran < -15) {
      x_ran = 750;
    }
    if (y_ran > 565) {
      y_ran = -10;
    }
    if (y_ran < -15) {
      y_ran = 565;
    }
  }
}
