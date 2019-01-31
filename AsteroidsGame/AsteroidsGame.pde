Spaceship player1;
Star[] star = new Star[200];
Asteroid[] astroid = new Asteroid[10];
Spaceship[] starship = new Spaceship[1];
Bullet[] laser = new Bullet[1000];
float x_pos;
float y_pos;
float speed, direction;
boolean ROTATE_LEFT;
boolean ROTATE_RIGHT;
boolean MOVE_FORWARD;
boolean MOVE_BACKWARD;
boolean SPACE_BAR;
boolean Asteroids_Touching;
int x_bon = -10;
int y_bon = -2;

/* * * * * * * * * * * * * * * * * * * * * * * */

public void setup() {
  size(750, 550);
  x_pos = width/2;
  y_pos = height/2;
  speed = 1;
  direction = 255;
  for (int i = 0; i < star.length; i++) {
    star[i] = new Star(width/2, height/2);
  }  
  for (int i = 0; i < astroid.length; i++) {
    astroid[i] = new Asteroid(width/2, height/2);
  }
  for (int i = 0; i < laser.length; i++) {
    laser[1] = new Bullet(width/2, height/2);
  }
  starship[0] = new Spaceship(width/2, height/2);
}


/* * * * * * * * * * * * * * * * * * * * * * * */
public void draw() {
  background(0);
  for (int i = 0; i < star.length; i++) {
    star[i].show();
  }
  for (int i = 0; i < astroid.length; i++) {
    astroid[i].show();
  }
  if (ROTATE_LEFT)
    direction -= 5.0;
  if (ROTATE_RIGHT)
    direction += 5.0;
  if (MOVE_FORWARD == true) {
    if (speed < 3) {
      speed += .3;
    }
  } else {
    if (speed > 0) {
      speed -= .5;
    }
    if (speed < 0)
      speed = 0;
  }
  if (MOVE_BACKWARD == true) {
    if (speed > 0) {
      speed -= 1;
      MOVE_FORWARD = false;
    }
  }

  x_pos = x_pos + speed*(float)Math.cos(radians(direction));
  y_pos = y_pos + speed*(float)Math.sin(radians(direction));

  starship[0].show();

  if (SPACE_BAR == true) {
    //    for (int i = 0; i < laser.length; i++) {
    laser[1].show();
  }
  //  }
}



/* * * * * * * * * * * * * * * * * * * * * * * */
void keyPressed() {
  if (key == 'a') {
    ROTATE_LEFT = true;
  } else if ( key == 'd') {
    ROTATE_RIGHT = true;
  } else if (key == 'w') {
    MOVE_FORWARD = true;
  }

  if (keyCode == 32) {
    SPACE_BAR = true;
  }
}


/* * * * * * * * * * * * * * * * * * * * * * * */
void keyReleased() {  
  if (key == 'a') {
    ROTATE_LEFT = false;
  } else if ( key == 'd') {
    ROTATE_RIGHT = false;
  } else if (key == 'w') {
    MOVE_FORWARD = false;
  }
}



//void checkOnAsteroids() {
//  for (int i = 0; i < astroid.length; i++) {
//    Asteroid a1 = astroid[i];
//    for (int j = 0; j < astroid.length; j++) {
//      Asteroid a2 = astroid[j];
//      if (a1 != a2 && a1.collidingWith(a2)) {
//        Asteroids_Touching = true;
//      }
//    }
//  }
//}
