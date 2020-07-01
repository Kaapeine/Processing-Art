import com.hamoid.*;

VideoExport vid;

void setup() {
  background(155, 216, 160);
  size(600, 600); 
  frameRate(30);
  
  vid = new VideoExport(this);
  vid.startMovie();
}

void draw() {
  int x = int(random(0, width));
  int y = 0;
  bamboo(x);
}

void bamboo(int x) {
  stroke(1, 121, 83, 255);
  int width = int(random(5,20));
  int x2 = x + width;
  int slope = int(random(-100,100));
  
  //line(x,0,x2 + disp,height);
  //line(x2,0,2*x2 - x + disp, height);
  
  int x1 = x;
  
  while (x1 <= x2) {
    line(x1, 0, x1 + slope, height);
    x1++;
  }
  
  stroke(0);
  line(x, 0, x+slope, height);
  line(x2, 0, x2+slope, height);
  
  
  vid.saveFrame();
}

void keyPressed() {
  if (key == 'q') {
    vid.endMovie();
    exit();
  }
}
