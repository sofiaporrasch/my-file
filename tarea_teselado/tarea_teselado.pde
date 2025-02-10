void setup() {
  size(800, 800);
  background(#be95c4);

}

void draw() {
  for (int i = 0; i < width; i += 100) { // eje x
    for (int j = 0; j < height; j += 100) { // eje y
     
      fill(#5fa8d3); 
      noStroke();
      quad(
        i, j,           // x1,y1
        i + 50, j + 50, // x2,y2
        i + 100, j,     // x3,y3
        i + 50, j - 50  // x4,y4
      );

      
      fill(#f26a8d); 
      noStroke();
      triangle(
        i, j,           // x1,y1
        i + 50, j + 50, // x2,y2
        i + 100, j      // x3,y3
      );

     
      fill(#892b64); 
      noStroke();
      ellipse(i + 50, j + 50, 50, 50); // centro del circle
    }
  }
}
