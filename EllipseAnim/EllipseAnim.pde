import com.hamoid.*;

VideoExport vid;

float x1, y1, x2, y2;
float s = 20; // s for spacing
float a = 400; // a for amplitude
float w = 2 * PI / 2; // denominator is time period, w for omega
float t; // t for time

void setup() {
  size(600, 600);
  background(50);
  frameRate(60);
  
  vid = new VideoExport(this);
  vid.startMovie();
}

void draw() {
  translate(width/2, height/2);
  background(0);
  
  t = frameCount/frameRate;
  
  //stroke(255);
  strokeWeight(3);
  noFill();
  
  for (int i = 1; i < 11; i++) {
    int r = int(random(1,255));
    int g = int(random(1,255));
    int b = int(random(1,255));
    stroke(r, g, b);
    ellipse(0, a * sin(w * t + PI * i / 5 ) / (3*i), 40 + s*i*2, 20 + s*i);
  }
  
  vid.saveFrame();
}

void keyPressed() {
  if (key == 'q') {
    vid.endMovie();
    exit();
  }
}
