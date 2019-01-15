//note that this class does NOT *NEED* to extend Mover but can if you like
class Star {
  float starx_pos;
  float stary_pos;

  Star(int x, int y) {
    starx_pos = (int)(Math.random() * 750);
    stary_pos = (int)(Math.random() * 550);
  }

  void show() {
    fill(255);
    ellipse(starx_pos, stary_pos, 5, 5);
    starx_pos = starx_pos - .02;
   
   if(starx_pos < 0){
    starx_pos = 750; 
   }
  }
  
}
