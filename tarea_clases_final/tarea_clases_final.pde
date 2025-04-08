// contenedor
RecuerdoMontauk recuerdoMontauk;
RecuerdoRuptura recuerdoRuptura;
RecuerdoBorrado recuerdoBorrado;
RecuerdoEscape recuerdoEscape;
RecuerdoClementine recuerdoClementine;

int estado = 0;

PImage imgMontauk, imgRuptura, imgBorrado, imgEscape, imgClementine;
float xMontauk = 0, xRuptura = 0, xBorrado = 0, xEscape = 0, xClementine = 0;

void setup() { 
  size(730, 260);
  
  
  //imagenes recuerdos
  imgMontauk = loadImage("recuerdo_1.jpg");
  imgRuptura = loadImage("recuerdo_2.jpg");
  imgBorrado = loadImage("recuerdo_3.jpg");
  imgEscape = loadImage("recuerdo_4.jpg");
  imgClementine = loadImage("recuerdo_5.jpg");
  
  // para crear la subclase objetos
  recuerdoMontauk = new RecuerdoMontauk();
  recuerdoRuptura = new RecuerdoRuptura();
  recuerdoBorrado = new RecuerdoBorrado();
  recuerdoEscape = new RecuerdoEscape();
  recuerdoClementine = new RecuerdoClementine();
}

void draw(){
  
  frameRate(10);
  background(#420000);
  
  // estados
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

// eventos enter y click
void keyPressed() {
  // eventos enter y espacio
  if (key == ' ' || key == ENTER) {
    estado = (estado + 1) % 5; //esto cambia el estado
  }
}

// evento click
void mousePressed() {
  estado = (estado + 1) % 5; 
}

// Subclase RecuerdoMontauk
class RecuerdoMontauk {
  void mostrar() {
    println("Recuerdo: Encuentro en Montauk");
    textSize(24);
    text("Acción: Presionar 'Enter' o Barra Espaciadora",20,50);
    println("Efecto: Inicia la historia, activando los flashbacks");
    
    image(imgMontauk, xMontauk, 0);
    xMontauk += 1; 
    if (xMontauk > width) {
      xMontauk = -imgMontauk.width;
    }
  }
}

// Subclase RecuerdoRuptura
class RecuerdoRuptura {
  void mostrar() {
    println("Recuerdo: Flashback de la ruptura");
     textSize(24);
    text("Acción: Mantener barra espaciadora", 20, 50);
    println("Efecto: Muestra recuerdos de discusiones y separación");
     image(imgRuptura, xRuptura, 0);
    xRuptura += 1;
    if (xRuptura > width) {
      xRuptura = -imgRuptura.width; 
    }
  }
}

// Subclase RecuerdoBorrado
class RecuerdoBorrado {
  void mostrar() {
    println("Recuerdo: Descubrimiento del borrado");
     textSize(24);
    text("Acción: MouseDragged sobre un elemento", 20, 50);
    println("Efecto: Joel decide borrar el procedimiento de borrado");
    image(imgBorrado, xBorrado, 0);
    xBorrado += 1;
    if (xBorrado > width) {
      xBorrado = -imgBorrado.width;
    }
  }
}

// Subclase RecuerdoEscape
class RecuerdoEscape {
  void mostrar() {
    println("Recuerdo: Intento de escape en la mente");
     textSize(24);
    text("Acción: Mantener barra espaciadora",20,50);
    println("Efecto: Los recuerdos parpadean, pero desaparecen de todas formas");
    image(imgEscape, xEscape, 0);
    xEscape += 1;
     if (xEscape > width) {
      xEscape = -imgEscape.width; 
    }
  }
}

// Subclase RecuerdoClementine
class RecuerdoClementine {
  void mostrar() {
    println("Recuerdo: Reencuentro con Clementine");
     textSize(24);
    text("Acción: Click derecho",20,50);
    println("Efecto: Joel intenta ocultar a Clementine en recuerdos infantiles");
    image(imgClementine, xClementine, 0);
    xClementine += 1;
     if (xClementine > width) {
      xClementine = -imgClementine.width;
    }
  }
}  
