PImage[] imagenes = new PImage[14];
int fase = 0;
Historia historia;
boolean mensajeMostrado = false; // Controla si la imagen debe ser mostrada

void setup() {
  size(1200, 700);
  
  // Cargar las imágenes para cada fase
  imagenes[0] = loadImage("holox.jpg");
  imagenes[1] = loadImage("hola.jpeg");
 
  
  
  // Inicializar la historia
  historia = new Historia(imagenes);
}

void draw() {
  background(0);
  
  // Mostrar la imagen de acuerdo con la fase actual, solo cuando el mensaje haya sido mostrado
  if (mensajeMostrado) {
    historia.mostrarImagen(fase);
  }
  
  // Mostrar el texto si el mensaje ha sido mostrado
  if (mensajeMostrado) {
    fill(255);
    textSize(20);
    textAlign(CENTER, BOTTOM);
    text("Fase " + (fase + 1), width / 2, height - 30);
  }
}

void mousePressed() {
  // Si no hemos llegado al final, avanzamos a la siguiente fase
  if (fase < 13) {
    fase++;
    mensajeMostrado = true;  // Mostrar la imagen solo cuando el usuario presiona el mouse
  } 
  
  // Si hemos llegado al final, mostramos que la historia ha terminado
  if (fase == 13) {
    println("Fin de la historia.");
  }
}

// Clase Historia para manejar las fases y las imágenes
class Historia {
  PImage[] imagenes;
  
  // Constructor de la clase
  Historia(PImage[] imagenes) {
    this.imagenes = imagenes;
  }
  
  // Mostrar la imagen correspondiente a la fase
  void mostrarImagen(int fase) {
    image(imagenes[fase], 0, 0, width, height);
  }
}
