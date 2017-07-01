import processing.serial.*;
Serial myport;
int mee;

Ball[] bullet = new Ball[int(random(1, 7))];

void setup() {
  myport = new Serial(this,"/dev/cu.usbmodem1421",9600);
  size(200, 400);
  smooth();
  for (int i = 0; i< bullet.length; i++) {
    bullet[i] = new Ball();
  }
}

void draw() {
  if(myport.available() > 0){
  mee = myport.read();
  }
  reset();
}

float xm = 100;
float ym = 380;
void me() {
  noStroke();
  ellipse(xm, ym, 8, 8);
  fill(255);
  if (xm < 0) {
    xm = 200;
  }
  if (xm > 200) {
    xm = 0;
  }
  if (mee <= 49){
  xm = xm -1;
  }
  if (mee >= 50){
  xm =xm +1;
  }
}

void reset() {
  background(0);
  me();
  for (int i = 1; i< bullet.length-1; i++) {
    bullet[i].run(); 
    if (bullet[i].y>10) {
      bullet[i+1].run();
    }
  }
  dis();
  }


void mousePressed() {
  setup();
}

void dis() {
  for (int i = 0; i < bullet.length - 1; i++) {
    float d1  = dist(xm, ym, bullet[i].x, bullet[i].y);
    float d2 =dist(xm, ym, bullet[i+1].x, bullet[i+1].y);
    if (d1 <= 10 || d2 <= 10) {
      noLoop();
    }
  }
}