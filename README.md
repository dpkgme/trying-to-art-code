# trying-to-art-code
Create gifs with processing

## first attempt

https://github.com/dpkgme/trying-to-art-code/blob/main/sketch.pde

```
float a = 0;
float b;
float c;


void setup() {
  size(500, 500);
  stroke(240);
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
  
  saveFrame();
}
```
