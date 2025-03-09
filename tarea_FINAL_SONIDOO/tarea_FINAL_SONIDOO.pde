import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer player;
FFT fft;

void setup() {
  size(800, 800);
  background(0);

  minim = new Minim(this);
  player = minim.loadFile("cancion-dominic.mp3.mp3");
  player.play();

  fft = new FFT(player.bufferSize(), player.sampleRate());
}

void draw() {
  background(0, 20);
  fft.forward(player.mix);

  //nivel de frecuencia
  float level = fft.getBand(10) * 3;


  //centro de los circulos
  translate(width / 2, height / 2);

  //ondas
  for (int i = 0; i < 10; i++) {
    //radio con nivel
    float rad = level * (i + 1) * 4;
//condicional para que varíe el color 
    stroke(255 - i * 20, i * 25, 200);
    noFill();
    ellipse(0, 0, rad, rad);
  }
}
