class ball {
  float x = width/2;
  float y = height/2;
  float xspd;
  float yspd;
  float radius = 12; //Ball has GIRTH
  
  ball() {
    reset();
  }
  
  void hitsLeft(paddle p) {
     if (y < p.y + p.h/2 && y > p.y - p.h/2 && x - radius < p.x + p.w/2) {
         xspd *= -1;
       }
  }
  void hitsRight(paddle p) {
  if ( y < p.y + p.h/2 && y > p.y - p.h/2 && x + radius > p.x - p.w/2) {
     xspd *= -1;
  }
}

  
  void move (){
    x = x + xspd;
    y = y + yspd;
    
    if (scoreright + scoreleft == 10 || scoreright + scoreleft > 10 ) { //Double Time?? It works
      x = x + xspd * 2;
      y = y + yspd * 2;
    }
  }
  
  void show() {
    fill(255);
    ellipse(x, y, radius*2, radius*2);
  }
  
  void reset() {
    x = width/2;
    y = height/2;
    float angle = random(TWO_PI);
    xspd = 5 * cos(angle);
    yspd = 5 * sin(angle);
  }
  
  void edgecheck (){
    if (y < 0 || y > height) {
      yspd *= -1; //Opposite
    }
    
    if (x > width) {
      scoreleft++;
      reset();
    }
    
    if ( x < 0) {
      scoreright++;
      reset();
    }
  }
}
