

void setup(){
  size (500, 500);
}
void draw(){
  if (mouseX>200){
    ellipse(mouseX, mouseY, 50, 50);
  }else{
    print("no sabemos donde esta el mouse");
  }
}
    

  
