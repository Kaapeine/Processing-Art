import com.hamoid.*;

float x, y;
float r, theta;
// r = 1 - sin(theta);

VideoExport videoExport;

void setup() {
  size(600,600);
  background(45, 44, 72, 255); 
  
  videoExport = new VideoExport(this);
  videoExport.startMovie();
  
  strokeWeight(1.5);
  stroke(255);
  //line(0,height/2,width,height/2);
  //line(width/2,0,width/2, height);
}

void draw() {
  stroke(255);
  strokeWeight(0.01);
  translate(width/2, height/2);
  //r = 1 - sin(theta);
  //point(x,y);
  line(x(r, theta), y(r, theta), x(r+0.02, theta+1), y(r+0.02, theta+1));
  r = r + 0.2;
  theta = theta +10;
  
  videoExport.saveFrame();
}

float x(float r, float theta) {
  x = r * sin(theta * 10) * 1;
  return x;
}

float y(float r, float theta) {
  y = r * cos(theta * 10) * 1; 
  return y;
}

void keyPressed() {
  if (key == 'q') {
    videoExport.endMovie();
    exit();
  }
}
