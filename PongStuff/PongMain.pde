ball ball;

paddle left;
paddle right;

int scoreleft = 10;
int scoreright = 0;

void setup() {
  size(600, 400);
  ball = new ball();
  left = new paddle(true);
  right = new paddle(false);
}

void draw() {
  background(0);
  
 ball.hitsLeft(left);
  ball.hitsRight(right);
  
  //Paddles
  left.show();
  right.show();
  left.update();
  right.update();
  //Ball
  ball.move();
  ball.edgecheck();
  ball.show();
  
  fill(255);
  textSize(30);
  text(scoreleft, 10, 40);
  text(scoreright, width-20, 40);
}

void keyReleased() {
  left.move(0);
  right.move(0);
}

void keyPressed() {
  
  if (key == 'w') { //Up
    left.move(-10);
  } else if (key == 's') { //Down
    left.move(10);
  }
  
  if (key == 'i') { //Up
    right.move(-10);
  } else if (key == 'k') { //Down
    right.move(10);
  }
}
