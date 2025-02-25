float x = 0;
float speed = 3;

float xm = 0;
float xp = 700;

float x1, y1, r, g, b;



void setup() {
  size (700, 500);
}

void draw () {
  background (#a2d6f9);

  // sol
  fill ( #ffc600);
  circle ( 0, 0, 400);

  noStroke();
  fill(255);
  //nube 1
  circle (x+20, 60, 100);
  circle (x, 30, 80);
  circle ( x + 80, 40, 120);
  circle ( x -50, 70, 80);
  // nube 2
  circle (x+300, 60, 100);
  circle (x+400, 30, 80);
  circle ( x + 350, 70, 120);
  circle ( x + 400, 80, 100);
  //nube 3
  circle (x-250, 60, 100);
  circle (x-300, 30, 80);
  circle ( x -350, 70, 120);
  circle ( x - 400, 80, 100);

  //nube 4
  circle (x+700, 60, 100);
  circle (x+500, 30, 80);
  circle ( x +550, 70, 120);
  circle ( x + 600, 80, 100);



  x= x + speed;

  if (x >=640) {
    speed = -3;
  }

  if ( x <=0) {
    speed = 3;
  }



  //mar
  fill(#03045e);
  rect(xm, 250, xp, 250);

  fill(#0077b6);
  rect(xm, 300, xp, 250);

  fill(#00b4d8);
  rect(xm, 400, xp, 250);

  // puntitos
  x1=  random( 0, 700);
  y1=  random ( 250, 500);
  r= random ( 0, 20);
  g= random( 0, 20);
  b= random( 0, 255);

  noStroke();
  fill(r, g, b, 100);
  circle (x1, y1, 25) ;
}
