float x = 0;
float speed = 3;
void setup() {
  size (700, 500);
}

void draw () {
 background (#a2d6f9);
 
 // sol
 fill ( #ffc600);
 circle ( 0 , 0 , 400);
 
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
 
 //mar
 
 x= x + speed; 
 
 if (x >=640){
 speed = -3;
}

if ( x <=0) { 
  speed = 3;
}
}
 
