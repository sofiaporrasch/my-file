

void setup(){
  size (500, 500);
}
void draw(){
  if (mouseX>250){
    ellipse(mouseX, mouseY, 50, 50);
  }else{
    ellipse(mouseX, mouseY, 10, 10);
  }
}

  
