

float[] y = new float[100];
float[] x = new float[100];
float angle;
float rate;

void setup() {
  size(725,725);
  noFill();
  stroke(0);
  angle = 0;
  rate = 1;
}

void draw() {
  background(255);
  float mx = map(mouseX, 0, width, 0.0, 0.3);
  float my = map(mouseY, 0, height, 0.0, 0.3);

  angle += rate;

  beginShape();
  for (int j = 1; j <=4; j++){
    for (int i = 0; i < y.length; i++) {
      curveVertex(x[i], y[i]);
      y[i] = 175*j-70 + sin((angle + i) * mx) * 100;
      x[i] = 175 -70 + cos((angle + i) * my) * 100;
    }
    for (int i = 0; i < y.length; i++) {
      curveVertex(x[i], y[i]);
      y[i] = 175*j-70 + sin((angle + i) * mx) * 100;
      x[i] = 175*2-70 + cos((angle + i) * my) * 100;
    }
    for (int i = 0; i < y.length; i++) {
      curveVertex(x[i], y[i]);
      y[i] = 175*j-70 + sin((angle + i) * mx) * 100;
      x[i] = 175*3-70 + cos((angle + i) * my) * 100;
    }
    for (int i = 0; i < y.length; i++) {
      curveVertex(x[i], y[i]);
      y[i] = 175*j-70 + sin((angle + i) * mx) * 100;
      x[i] = 175*4-70 + cos((angle + i) * my) * 100;
    }
  }
  endShape();
}