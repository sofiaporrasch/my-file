void setup(){
  size (500, 500);
}
// esto se ejecuta una vez x fotograma
void draw(){
background (50, 250, 100);
//esto mueve el origen del sistema de coordenadas 
translate (250, 270);

//base del cuerpo
fill(#12D839);
ellipse(0, 50, 150, 40);

//centro del cuerpo
ellipse(0, 0, 100 , 100);

//manos
ellipse(-50, 25, 30, 50);
ellipse(50, 25, 30, 50);

//ojitos
fill(255);
ellipse(-30, -40, 50, 50);
ellipse(30, -40, 50, 50);

//pupilas
fill(0);
ellipse(-30, -40, 30, 30);
ellipse(30, -40, 30, 30);

rectMode(CENTER);
rect(0, 10, 60, 10);

fill(#72CAF5, 100);
ellipse(0, -10, 195, 195);

triangle(50, -80, 65, -65, 45, -75);
triangle(50, -70, 65, -55, 45, -65);
}
