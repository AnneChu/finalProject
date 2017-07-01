//begin


//class
class Ball {
  
  float x;
  float y;
  int vy ;

  Ball() {
    x = random(10, width-10);
    y = 0;
    vy = 3;
  }

  void run() {
    display();
    move();
  }
  
  void move() {
    y += vy;
    if(y > height){
    y = 0;
    x = random(10, width-10);
    }
  }

  void display() {
    noStroke();
    fill(255);
    ellipse(x, y, 5, 5);
  }
}