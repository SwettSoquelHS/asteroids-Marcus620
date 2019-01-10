//note that this class does NOT *NEED* to extend Mover but can if you like
class Star {
  float x_pos;
  float y_pos;

  Star(int x, int y) {
    x_pos = (int)(Math.random() * 750);
    y_pos = (int)(Math.random() * 550);
  }

  void show() {
    fill(255);
    ellipse(x_pos, y_pos, 5, 5);
    x_pos = x_pos - .02;
   
   if(x_pos < 0){
    x_pos = 750; 
   }
  }
  
}
