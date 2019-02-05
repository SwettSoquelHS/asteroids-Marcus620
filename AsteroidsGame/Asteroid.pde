/*
  Asteroid class
 Should extend Mover class and implement show.
 
 Initially, your asteroid may just be a simple circle or square
 but the final program should use "beginShap(), vertex(), and endShape()"
 to render the asteroid.
 */
class Asteroid {   
  int ran_size =(int) random(1, 4);
  int size;
  float x_ran, y_ran;
  float ran_direction = (int) random (1, 5);
  PVector[] coordinates = new PVector[8];

  Asteroid(int x, int y) {
    x_ran = (int)(Math.random() * 750);
    y_ran = (int)(Math.random() * 550);
    coordinates[0] = new PVector(random(550, 565), random(225, 245));
    coordinates[1] = new PVector(random(530, 540), random(220, 225));
    coordinates[2] = new PVector(random(505, 515), random(220, 240));
    coordinates[3] = new PVector(random(490, 500), random(190, 210));
    coordinates[4] = new PVector(random(490, 510), random(170, 190));
    coordinates[5] = new PVector(random(520, 530), random(150, 170));
    coordinates[6] = new PVector(random(550, 570), random(140, 160));
    coordinates[7] = new PVector(random(565, 575), random(175, 185));
  }

  void show() {
    fill(#441B09);
    stroke(1);

    pushMatrix();
    translate(x_ran, y_ran);
    beginShape();
    vertex(random(550, 565), random(225, 245));
    vertex(random(530, 540), random(220, 225));
    vertex(random(505, 515), random(220, 240));
    vertex(random(490, 500), random(190, 210));
    vertex(random(490, 510), random(170, 190));
    vertex(random(520, 530), random(150, 170));
    vertex(random(550, 570), random(140, 160));
    vertex(random(565, 575), random(175, 185));
    endShape();
    popMatrix();

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
