import gifAnimation.*;

float a = 0;
float b;
float c;
GifMaker gifExport;

void setup() {
  size(500, 500);
  stroke(100);

    frameRate(12);
    gifExport = new GifMaker(this, "1st.gif");
    gifExport.setRepeat(0);             // make it an "endless" animation
    gifExport.setTransparent(200,200,200);    // black is transparent
}

void draw() {
  background(200);

  a = a + 2.5;
  if (a > 500) {
    a = 0;
  }
  b = a / 2;
  c = a / 5;

  line(a, 0, a, height);
  line(b, 0, a, height);
  line(c, 0, a, height);
  line(c, height, a, 0);
  line(b, height, a, 0);
  line(c, height, c, 0);
  line(b, height, b, 0);
  
  gifExport.setDelay(1);
  gifExport.addFrame();
    
  gifExport.finish();  

}
