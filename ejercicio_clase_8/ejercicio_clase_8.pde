PImage i, n, d;
int fase=0;

void setup() {
  size (500, 500);
  i = loadImage("inicio.jpeg");
  n = loadImage("nudo.jpeg");
  d = loadImage("desenlace.jpeg");
}

void draw () {

  background(0);

  if (fase == 0) {
    image(i, 0, 0);
  } else if (fase ==1) {
    image(n, 0, 0);
  } else if (fase ==2) {
    image(d, 0, 0);
  }
  
  if (fase > 2 ) { fase =0;
  }
}

void mousePressed() { 
  fase++;
}
