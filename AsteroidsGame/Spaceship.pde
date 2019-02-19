/*
  Spaceship class
 Should extend Mover class and implement show.
 You may add additional methods to this class, for example "rotate" and "accelerate" 
 might be useful.
 */
public class Spaceship extends Mover{   
  int time = 0;

  Spaceship(int x, int y, float speed, float direction) {
    super(x, y, speed, direction);
  }

  void show() {
    time++;
    pushMatrix();
    noStroke();
    fill(60);
    translate(x, y);
    rotate(radians(direction));
    rect(-15, 10, 30, 5);
    rect(-15, -15, 30, 5);
    triangle(-20, -20, -20, 20, 20, 0);
    fill(0, 225, 250);
    triangle(-5, -10, -5, 10, 20, 0);
    fill(255, 255, 0);
    rect(-22, -8, 5, 16);
    fill(60);
    rect(x_bon, y_bon, 5, 5);
    if (time <= 5) {
      fill(255, 0, 0);
    } else {
      fill(255, 255, 0);
    }
    if (time == 10) {
      time = 0;
    }
    triangle(-40, 0, -20, -6, -20, 6);


    if (x > 765) {
      x = -10;
    }
    if (x < -15) {
      x = 750;
    }
    if (y > 565) {
      y = -10;
    }
    if (y < -15) {
      y = 565;
    }
    popMatrix();
  }

  void update() {
    if (ROTATE_LEFT) {
      direction -= 5.0;
    }
    if (ROTATE_RIGHT) {
      direction += 5.0;
    }
    if (MOVE_FORWARD == true) {
      if (speed < 3) {
        speed += .3;
      }
    }
    if (MOVE_FORWARD == false) {
      if (speed > 0) {
        speed -= .1;
      } else {
        speed = 0;
      }
    }
    super.update();
  }
}
