Table songs;
int totalSongs;
float[] danceability;
float[] energy;
color[] colors;

void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  smooth();
  
  // cargar datos
  songs = loadTable("spotify.csv.csv", "header");
  totalSongs = songs.getRowCount();
  
  //  arrays
  danceability = new float[totalSongs];
  energy = new float[totalSongs];
  colors = new color[totalSongs];
  
  //  colores
  for (int i = 0; i < totalSongs; i++) {
    danceability[i] = songs.getFloat(i, "danceability");
    energy[i] = songs.getFloat(i, "energy");
    
    // crear color 
    float hue = map(i, 0, totalSongs, 0, 360); // Arcoiris por orden
    float sat = map(energy[i], 0, 1, 50, 100); // Más energía = más saturado
    float bri = map(danceability[i], 0, 1, 70, 100); // Más bailable = más brillo
    colors[i] = color(hue, sat, bri);
  }
}

void draw() {
  background(0);
  
  //  espiral 
  float angle = 0;
  float radius = 10;
  
  for (int i = 0; i < totalSongs; i++) {
    float x = width/2 + cos(angle) * radius;
    float y = height/2 + sin(angle) * radius;
    
    // tamaño 
    float size = map(energy[i], 0, 1, 5, 30);
    
    fill(colors[i]);
    ellipse(x, y, size, size);
    
    // radio y ángulo 
    angle += 0.2;
    radius += 0.3;
    
    // rotar tiempo
    if (mousePressed) {
      angle += map(mouseX, 0, width, -0.05, 0.05);
    }
  }
  
  // info
  fill(255);
  textSize(16);
  text("Canciones de Spotify", 30, 30);
  textSize(12);
  text("Color: Orden en el dataset", 30, 50);
  text("Tamaño: Energía de la canción", 30, 70);
  text("Brillo: Bailabilidad", 30, 90);
  text("Haz click y mueve el mouse para rotar", 30, 110);
}
