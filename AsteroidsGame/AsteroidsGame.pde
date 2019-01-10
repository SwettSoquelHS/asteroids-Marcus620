/* * * * * * * * * * * * * * * * * * * * * * *
 Class variable declarations here
 */
Spaceship player1;
Star[] star = new Star[200];
Asteroid[] astroid = new Asteroid[10];
Spaceship[] starship = new Spaceship[1];
Bullet[] laser = new Bullet[1];
float x_pos, y_pos;
float speed, direction;
boolean ROTATE_LEFT;
boolean ROTATE_RIGHT;
boolean MOVE_FORWARD;
boolean MOVE_BACKWARD;
boolean SPACE_BAR;
int x_bon = -10;
int y_bon = -2;


/* * * * * * * * * * * * * * * * * * * * * * *
 Initialize all of your variables and game state here
 */
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
  starship[0] = new Spaceship(width/2, height/2);
  laser[0] = new Bullet(width/2, height/2);
}


/* * * * * * * * * * * * * * * * * * * * * * *
 Drawing work here
 */
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
//  laser[0].show();
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevent key presses for our game
 */
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ROTATE_LEFT = true;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = true;
    } else if (keyCode == UP) {
      MOVE_FORWARD = true;
    }
  }

  //32 is spacebar
  if (keyCode == 32) {  
    SPACE_BAR = true;
  }
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevant key releases for our game.
 */
void keyReleased() {  
  if (key == CODED) { 
    if (keyCode == LEFT) {
      ROTATE_LEFT = false;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = false;
    } else if (keyCode == UP) {
      MOVE_FORWARD = false;
    }
  }
  if (keyCode == 32) {
    SPACE_BAR = false;
  }
}
