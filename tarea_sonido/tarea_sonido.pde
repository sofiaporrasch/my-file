import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer player;
FFT fft;

int x=0;
int y=50;

float rad;
float level;

void setup() {
  size (800, 800);
  background (0);
  frameRate(800);

  minim=new Minim(this);
  player = minim.loadFile("cancion-dominic.mp3.mp3");
  player.play();

  fft = new FFT(player.bufferSize(), player.sampleRate());
}


void draw() {
  fft.forward(player.mix);

  level = fft.getBand(10);
  rad= (level * width/20);

  float r = random (0, 140);
  float g = random (150, 255);
  float b = random(0, 60);

  stroke (r, g, b);
  fill(0, 5);
  ellipse(x, y, rad, rad);
  x++;

  if (x>width) {
    x=0;
  }
  if (y>height) {
    y=0;
    background(0);
  }
}
