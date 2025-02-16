float x = 0;
float speed = 3;
void setup() {
  size (640, 360);
}

void draw () {
 background (#a2d6f9);
 
 noStroke();
 fill(255);
 circle (x, 180, 50);
 
 x= x + speed; 
 
 if (x >=640){
 speed = -3;
}

if ( x <=0) { 
  speed = 3;
}
}
 
