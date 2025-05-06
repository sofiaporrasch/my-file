Table table:
int nSamples;
float[] 
float[]

void setup() {
  size (1200, 800);
  
  table = loadTable("spotify_top_1000_tracks.csv", "header");
  
  nsamples = table.getRowCount();
  
  
  
