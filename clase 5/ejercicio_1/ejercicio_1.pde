int size = 50;
int posX = 20;
int posY = 80;

int posBordeIzquierdo;
int posBordeSuperior;
int posBordeDerecho;
int posBordeInferior;


void setup() {
  size(500, 500);
}


void draw() {
  background(150, 150, 200);
  noStroke();
  
  posBordeIzquierdo = posX;
  posBordeSuperior = posY;
  posBordeDerecho= posX+size;
  posBordeInferior= posY + size;
   
   //bordes verticales
  
  if ((mouseX > posBordeIzquierdo && posBordeDerecho < 100)  &&
    (mouseY > posBordeSuperior && mouseY < posBordeInferior)) {
    fill (45, 60, 80);
  } else {
    fill (255);
  }
  rect(posX, posY, size, size);
}
