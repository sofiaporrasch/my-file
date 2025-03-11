float posX=0;
float posY=0;
float  w=100;


void setup(){
  size (400, 400);
}
void draw () { 
  background(255);
  
  
  
  
  draw_ellipse(200, posY, 50, 50);
  
  if (posY > width) { 
    posY= 0;
  }
  

  posY++;
}
  
  void draw_ellipse(float x , float y, float w, float h ) {
    println(w);
    ellipse (x,y,w,h);
  }
