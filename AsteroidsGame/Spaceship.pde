/*
  Spaceship class
 Should extend Mover class and implement show.
 You may add additional methods to this class, for example "rotate" and "accelerate" 
 might be useful.
 */
class Spaceship {   
  int time = 0;

  Spaceship(int x, int y) {
    x_pos = 375;
    y_pos = 275;
  }

  void show() {
    time++;
    pushMatrix();
    noStroke();
    fill(60);
    translate(x_pos, y_pos);
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
    
    
    if(x_pos > 765){
     x_pos = -10; 
    }
    if(x_pos < -15){
     x_pos = 750; 
    }
    if(y_pos > 565){
     y_pos = -10; 
    }
    if(y_pos < -15){
     y_pos = 565; 
    }
    popMatrix();
  }
}
