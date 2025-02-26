//variables //<>//
int h;
int m;
int s;

String sec;
float posXSec;
float posYSec;
int circleSizeSec;
int textSizeSec;

float posXMin;
float posYMin;
int circleSizeMin;
float textSizeMin;
String min;

int posXHour;
int posYHour;
int circleSizeHour;
String hour;
int textSizeHour;

float x1, y1, r, g, b;


void setup () {
  size(800, 500);
}


void draw() {


  if (h>17) {
    background(#03045e);
  } else {
    background (#89c2d9);
  }

  // puntitos
  x1=  random( 0, 800);
  y1=  random ( 0, 250);
  noStroke();
  fill(255);
  circle (x1, y1, 25) ;



  //montañas
  noStroke();
  fill(#90a955);
  triangle(0, 600, 220, 300, 500, 600);
  triangle(100, 600, 600, 200, 800, 600);

  //inicializar variables
  h = hour();
  m =minute();
  s= second();
  posXSec = width/1.3;
  posYSec = height/3;
  circleSizeSec = s*10;
  textSizeSec = s;
  posXMin = width/2;
  posYMin = height/1.5;
  circleSizeMin = m*5;
  textSizeMin = m*2;
  posXHour = width/ 5;
  posYHour = height/3;
  circleSizeHour = h*4;
  textSizeHour = h*2;

  //circulo hora
  noStroke();
  fill(#ffc300);
  circle( posXHour, posYHour, circleSizeHour);


  //círculo segundos
  noStroke();
  fill(#e36414);
  circle ( posXSec, posYSec, circleSizeSec);

  //circulo minutos
  noStroke();
  fill(#f4a261);
  circle( posXMin, posYMin, circleSizeMin);



  //número segundos
  sec= nf(s, 2);
  min= nf(m, 2);
  if (mousePressed) {
    fill(#ffffff);
    textAlign(CENTER, CENTER);
    text ( sec, posXSec, posYSec);
    textSize(textSizeSec);
  }

  //número minutos

  if (mousePressed) {
    fill(#ffffff);
    textAlign(CENTER, CENTER);
    text ( min, posXMin, posYMin);
    textSize(textSizeMin);
  }
  //número horas
  hour= nf(h, 2);
  if (mousePressed) {
    fill(#ffffff);
    textAlign(CENTER, CENTER);
    text ( hour, posXHour, posYHour);
    textSize(textSizeHour);
  }
}
