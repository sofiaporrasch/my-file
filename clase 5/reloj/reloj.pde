int h;
int m;
int s;
int x =40;
 String timeString;


void setup(){
  size(500,500);
  textAlign(CENTER, CENTER);
  
  
}

void draw () {
  background(0); 
  

  textSize(40);
  
  if (mousePressed && (mouseButton == LEFT)){
  textSize(x++);
  } else { textSize (x);
  } 
  
  h = hour();
  m =minute();
  s= second();
  
timeString = nf(h, 2)+ ":"+ nf(m, 2)+":" + nf(s, 2);

  

  text (timeString, width/2, height/2);
}
  
