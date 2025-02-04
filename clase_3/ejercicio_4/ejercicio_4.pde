void setup(){
  size(400, 400);
  background(0);
}  
  //for loop
  // inicualizamos variable 
  
  void draw(){
   
    for (int i = 0;  i < width;     i = i + 20){
    for (int j = 0; j < height; j=j+20){
       fill(255);
    quad(i, j, i +20 , j , i + 40, j + 20 , i + 20,j+20);
      //ellipse(i, j, 50, 50);
    
    
    
      // posX  posY
    } 
  }
  }
