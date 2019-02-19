Spaceship player1;
Star[] star = new Star[200];
Asteroid[] astroid = new Asteroid[10];
Spaceship starship;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
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
  for (int i = 0; i < star.length; i++) {
    star[i] = new Star(width/2, height/2);
  }  
  for (int i = 0; i < astroid.length; i++) {
    astroid[i] = new Asteroid(width/2, height/2);
  }
  starship = new Spaceship(width/2, height/2, 0, 180);
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

  starship.show();
  starship.update();

  for (Bullet b : bullets) {
    b.update();
    b.show();
  }

  ArrayList<Bullet> removeBullet = new ArrayList<Bullet>(); //prevents ConcurrentModificationException
  for (Bullet b : bullets) {
    if (b.off) {
      removeBullet.add(b);
    }
  }
  bullets.removeAll(removeBullet);
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
    Bullet b = new Bullet(starship.x, starship.y);
    bullets.add(b);
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
