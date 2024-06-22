//https://www.youtube.com/watch?v=lXnTwJgVKUY

PImage imagen;
int tam;

void setup() {
  size( 800, 400 );
  imagen =loadImage("F_17.jpg");
  noStroke ();
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background ( 0 );
  image(imagen, 0, 0);
  grilla (0, 0, width/2 / 13, height / 13);
}

void mousePressed () {
  fill (random(0, 360), 50, 100);
}
void keyPressed () {
  fill(360);
  tam = 16;
}
