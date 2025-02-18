int posX = 0;

void setup(){
  size( 500, 500);
  frameRate(20);
  
}

void draw (){
  background (200,20,200);
  //x1, y1, x2, y2
  line (posX, 10, posX, height);
  posX++;
}
