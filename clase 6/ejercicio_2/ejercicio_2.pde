int x = 0;
int y = 20;

float level;
float rad;

void setup() {
  size (800, 800);
  background(255);
}

void draw() {
  level = random(0, 1);
  rad = (level * width/3);
  for (int x=0; x <= width; x += 50) {
    for (int y=0; y <= height; y += 50) {
      fill(200,30);
      stroke( random(0, 0), random(100, 255), random(50, 255));
      println(x);
      ellipse(x, y, 50, 50);
  
    }
  }
}
