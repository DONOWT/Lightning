int startx = 0;
int starty = 200;
int endx = 0;
int endy = 200;
double money = 100;
boolean invest = false;

void setup() {
  size(1000,450);
  background(0);
  fill(10,100,30);
  noStroke();
}

void draw() {
  if(money<400 && money>0 && endy<400 && endy>0 && endx<1000){
  frameRate(3);
  stroke(100,100,100);
  strokeWeight(4);
  int increase = (int)(Math.random() * 21) - 10;
  endx = endx + (int)(Math.random() * 5 + 4);
  endy = endy + increase;
  stroke(100,100,100);
  stroke(155,155,155);
  line(startx, starty, endx, endy);
  if (increase > 0){
    stroke(255,0,0);
  }else{ 
    stroke(0,255,0);
  }
  double r = Math.random() * 5;
  double t = Math.random() * 5;
  line((startx+endx)/2,starty+(int)(r*r),(startx+endx)/2,starty-(int)(t*t));
  fill(0,0,255);
  noStroke();
  rect(0,0,1000,50);
    if (increase > 0){
    fill(255,0,0);
  }else{ 
    fill(0,255,0);
  }
  textSize(24);
  text("$",20,30);
  text(400-starty,30,30);
  if (invest == false){
    fill(255,255,255);
  }else{ 
    fill(255,255,0);
    double dendy = (double)(400-endy);
    double dstarty = (double)(400-starty);
    money = money*(dendy/dstarty);
  }
  int mon = (int)(money);
  text("Your Money $",100,30);
  text(mon,250,30);
  starty = endy;
  startx = endx;
  } else {
  noLoop();
  }
}

void mousePressed() {
  if(money<400 && money>0 && endy<400 && endy>0 && endx<1000){
    if(invest == true){
      invest = false;
    }else{
      invest = true;
    }
  } else {
      invest = false;
  }
}
