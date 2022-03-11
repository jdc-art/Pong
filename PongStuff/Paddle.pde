class paddle {
  float x;
  float y = height/2;
  float w = 10;
  float h = 70;
  float yspd = 0;
  
  paddle(boolean left) {
    if (left) {
      x = w;
    } else {
      x = width - w;
    }
  }
  
  void update() {
    y += yspd;
    y = constrain(y, h/2, height - h/2);
  }
  void move(float spd) {
    yspd = spd;
    if (scoreright + scoreleft == 10 || scoreright + scoreleft > 10) {//Double Time
      yspd = spd * 2;
    }
  }
  
  void show() {
    fill(255);
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
