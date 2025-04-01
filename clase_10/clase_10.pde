//Contenedor
Cat myCat;
void setup() { 
  size (800, 800);
  myCat = new Cat(color(255, 100, 100),10, 50, 5);
}
void draw(){
  background(255);
  myCat.display();
  myCat.run();
}
class Cat {
  
  color c;
  float posX;
  float posY;
  float speed;
  
  Cat (color tempC, float tempPosX, float tempPosY, float tempSpeed) {
    c = tempC;
    posX = tempPosX;
    posY = tempPosY;
    speed = tempSpeed;
  }
  
  void display(){
    stroke (0);
    fill(0);
    ellipse(posX, posY, 50, 50);
  }
  void run() { 
    posY += speed;
    if(posY > height || posY < 0) {
      speed *= -1;
    }
  }
}
  
