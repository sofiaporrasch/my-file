void setup(){
  size (800,600);
}
void draw(){
  //fondo
  background (255);
  
  //base cámara
  rectMode(CENTER);
  
  fill(#9d8386);
stroke(0);
rect(395, 305, 510, 315, 28);

  fill(#c9afb3);
  noStroke();
rect(400, 300, 500, 300, 28);

//lente

stroke(0);

fill(#878787);
circle(500, 300, 290);

fill(#9d9d9c);
circle(500, 300, 220);

fill(0);
circle(495,305,170);

fill(#575756);
circle(500, 300, 170);

fill(#878787);
circle( 500, 300, 150);

//guías de pixel vertical

stroke(170);
line(50, 0, 50, 800);
line(100, 0, 100, 800);
line(150, 0, 150, 800);
line(200, 0, 200, 800);
line(250, 0, 250, 800);
line(300, 0, 300, 800);
line(350, 0, 350, 800);
line(400, 0, 400, 800);
line(450, 0, 450, 800);
line(500, 0, 500, 800);
line(550, 0, 550, 800);
line(600, 0, 600, 800);
line(650, 0, 650, 800);
line(700, 0, 700, 800);
line(750, 0, 750, 800);
line(800, 0, 800, 800);

//guias de pixel horizontal

line(0, 50, 800, 50);
line(0, 100, 800, 100);
line(0, 150, 800, 150);
line(0, 200, 800, 200);
line(0, 250, 800, 250);
line(0, 300, 800, 300);
line(0, 350, 800, 350);
line(0, 400, 800, 400);
line(0, 450, 800, 450);
line(0, 500, 800, 500);
line(0, 550, 800, 550);
line(0, 600, 800, 600);
line(0, 650, 800, 650);
line(0, 700, 800, 700);
line(0, 750, 800, 750);
line(0, 800, 800, 800);


}
  
