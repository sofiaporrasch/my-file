// Contenedor general
RecuerdoMontauk recuerdoMontauk;
RecuerdoRuptura recuerdoRuptura;
RecuerdoBorrado recuerdoBorrado;
RecuerdoEscape recuerdoEscape;
RecuerdoClementine recuerdoClementine;

int estado = 0;

void setup() { 
  size(800, 800);
  
  // Creamos los objetos de cada recuerdo
  recuerdoMontauk = new RecuerdoMontauk();
  recuerdoRuptura = new RecuerdoRuptura();
  recuerdoBorrado = new RecuerdoBorrado();
  recuerdoEscape = new RecuerdoEscape();
  recuerdoClementine = new RecuerdoClementine();
}

void draw(){
  background(255);
  
  // Mostrar el recuerdo actual según el estado
  if (estado == 0) {
    recuerdoMontauk.mostrar();
  } else if (estado == 1) {
    recuerdoRuptura.mostrar();
  } else if (estado == 2) {
    recuerdoBorrado.mostrar();
  } else if (estado == 3) {
    recuerdoEscape.mostrar();
  } else if (estado == 4) {
    recuerdoClementine.mostrar();
  }
}

// Evento con la barra espaciadora, Enter y Click
void keyPressed() {
  // Cambiar el estado con 'Enter' o 'Espaciadora'
  if (key == ' ' || key == ENTER) {
    estado = (estado + 1) % 5; // Cambia el estado (de 0 a 4)
  }
}

// Evento con Click
void mousePressed() {
  // Cambiar el estado con el click del mouse
  estado = (estado + 1) % 5; // Cambia el estado (de 0 a 4)
}

// Subclase RecuerdoMontauk
class RecuerdoMontauk {
  void mostrar() {
    fill(0);
    textSize(24);
    text("Recuerdo: Encuentro en Montauk", 20, 40);
    text("Acción: Presionar 'Enter' o Barra Espaciadora", 20, 80);
    text("Efecto: Inicia la historia, activando los flashbacks", 20, 120);
  }
}

// Subclase RecuerdoRuptura
class RecuerdoRuptura {
  void mostrar() {
    fill(0);
    textSize(24);
    text("Recuerdo: Flashback de la ruptura", 20, 40);
    text("Acción: Mantener barra espaciadora", 20, 80);
    text("Efecto: Muestra recuerdos de discusiones y separación", 20, 120);
  }
}

// Subclase RecuerdoBorrado
class RecuerdoBorrado {
  void mostrar() {
    fill(0);
    textSize(24);
    text("Recuerdo: Descubrimiento del borrado", 20, 40);
    text("Acción: MouseDragged sobre un elemento", 20, 80);
    text("Efecto: Joel decide borrar el procedimiento de borrado", 20, 120);
  }
}

// Subclase RecuerdoEscape
class RecuerdoEscape {
  void mostrar() {
    fill(0);
    textSize(24);
    text("Recuerdo: Intento de escape en la mente", 20, 40);
    text("Acción: Mantener barra espaciadora", 20, 80);
    text("Efecto: Los recuerdos parpadean, pero desaparecen de todas formas", 20, 120);
  }
}

// Subclase RecuerdoClementine
class RecuerdoClementine {
  void mostrar() {
    fill(0);
    textSize(24);
    text("Recuerdo: Reencuentro con Clementine", 20, 40);
    text("Acción: Click derecho", 20, 80);
    text("Efecto: Joel intenta ocultar a Clementine en recuerdos infantiles", 20, 120);
  }
}  
