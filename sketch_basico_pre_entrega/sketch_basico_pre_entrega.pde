// LIBRERÍAS
import ddf.minim.*;

// AUDIO
Minim minim;
AudioPlayer player;

// VARIABLES DE ESCENA
int escena = 1;
int tiempoInicio;

// TEXTO
String inputUsuario = "";
String pregunta = "¿Cómo sabías que estaba ahí?";

// COLORES
color c1, c2;
float t = 0;

// PARTICULAS
PVector[] particulas = new PVector[100];

// SETUP
void setup() {
  size(800, 600);
  minim = new Minim(this);
  player = minim.loadFile("musica.mp3");  // Reemplaza con tu archivo
  
  player.play();
  tiempoInicio = millis();

  c1 = color(255, 150, 200);  // Rosado
  c2 = color(255, 200, 100);  // Naranja

  // Inicializar partículas
  for (int i = 0; i < particulas.length; i++) {
    particulas[i] = new PVector(random(width), random(height));
  }
}

// DRAW
void draw() {
  actualizarEscena();
  mostrarFondo();
  mostrarParticulas();
  mostrarTexto();
}

// CAMBIAR ESCENA AUTOMÁTICAMENTE
void actualizarEscena() {
  int tiempoActual = millis() - tiempoInicio;
  if (tiempoActual > 15000 && escena == 1) {
    escena = 2;
    pregunta = "¿Qué fuimos realmente?";
    c1 = color(200, 50, 100);  // Rojo oscuro
    c2 = color(255, 100, 150); // Fucsia
  } else if (tiempoActual > 30000 && escena == 2) {
    escena = 3;
    pregunta = "¿Qué queda de nosotros ahora?";
    c1 = color(50, 80, 150);   // Azul
    c2 = color(30, 30, 60);    // Gris oscuro
  }
}

// FONDO CON GRADIENTE
void mostrarFondo() {
  for (int y = 0; y < height; y++) {
    float inter = map(y, 0, height, 0, 1);
    stroke(lerpColor(c1, c2, inter));
    line(0, y, width, y);
  }
}

// PARTICULAS
void mostrarParticulas() {
  noStroke();
  fill(255, 100);
  for (int i = 0; i < particulas.length; i++) {
    PVector p = particulas[i];
    ellipse(p.x, p.y, 5, 5);
    // Movimiento hacia el mouse
    p.x += (mouseX - p.x) * 0.01;
    p.y += (mouseY - p.y) * 0.01;
  }
}

// TEXTO Y CAJA
void mostrarTexto() {
  fill(255);
  textSize(24);
  textAlign(CENTER);
  text(pregunta, width / 2, height / 2 - 100);

  // Caja de entrada
  fill(0, 100);
  rect(width / 2 - 200, height / 2, 400, 40, 10);

  fill(255);
  textSize(18);
  textAlign(LEFT);
  text(inputUsuario, width / 2 - 190, height / 2 + 25);
}

// CAPTURA TEXTO
void keyPressed() {
  if (key == BACKSPACE && inputUsuario.length() > 0) {
    inputUsuario = inputUsuario.substring(0, inputUsuario.length() - 1);
  } else if (key == ENTER || key == RETURN) {
    // Ignora por ahora
  } else if (key != CODED) {
    inputUsuario += key;
  }
}

// FINAL
void stop() {
  player.close();
  minim.stop();
  super.stop();
}
