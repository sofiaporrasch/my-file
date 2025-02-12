float xPos;
float yPos;

float xSpeed = 2.0;
float ySpeed= 3.0;

int   xDirection = 1;
int   yDirection = 1;

void setup(){
  size (800, 800);
  noStroke();
  frameRate(30);
  
  xPos = width / 2;
  yPos = height /2;
}

void draw(){
  background(0);
  
  xPos = xPos * -1;
  yPos = yPos * 1;
  
  if(xPos > width){
  }    
  ellipse(xPos, yPos, 50, 50);
}
