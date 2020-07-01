// int x, y;
float x1, y1;
float x2, y2;
float ang = 3.1416/6;
float l = 10; // initial side length
float c = cos(3.1416/6);
float s = sin(3.1416/6);
int j = 0;


void setup() {
  size(600, 700);
  background(10);
  x1 = 0;
  y1 = -50;
  //stroke(0);
  strokeWeight(5);
}

void draw() {
  translate(width/2, height/2);
  
  if ( l*c >= width/2 ) {
    l = 10;
    j++;
  }
  
  if (j%2 != 0) {
    rotate(PI/6);
  }
  
  int r = int(random(0,100));
  int g = int(random(0,100));
  int b = int(random(0,100));
  stroke(r, g, b);

  x1 = 0; y1 = -l; // prevents looping
  x2 = x1 + l * c;
  y2 = y1 + l * s;
  line(x1, y1, x2, y2);
  
  x1 = x2;
  y1 = y2;
  y2 = y2 + l;
  line(x1, y1, x2, y2);
  
  x1 = x2; 
  y1 = y2;
  x2 = 0;
  y2 = y2 + l * s;
  line(x1, y1, x2, y2);
  
  x1 = x2;
  y1 = y2;
  x2 = x1 - l*c;
  y2 = y1 - l*s;
  line(x1, y1, x2, y2);
  
  x1 = x2;
  y1 = y2;
  y2 = y1 - l;
  line(x1, y1, x2, y2);
  
  x1 = x2;
  y1 = y2;
  x2 = 0;
  y2 = -l;
  line(x1, y1, x2, y2);
  
  l = l + 10; // width
}
