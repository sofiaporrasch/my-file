int x = 0;
int y = 20;

float level;
float rad;

void setup() {
  size (800, 800);
  background(255);
  noStroke();
}

void draw() {
  level = random(0,1);
  rad = (level * width/2);
  if (y<height) {
    noFill();
    stroke( random(0,0), random(100,255), random(50,255));
    ellipse(x, y, rad, rad);
    delay(100);
    x=x+50;
    
    if (x>width) { 
      x=0;
      y=y+50;
    }
  } else {
    noLoop();
  }
}
