//fondos de la aventuras fijos
class Fondo {
  int numFondo;
  int maximosfondos = 8;
  PImage[] images = new PImage[maximosfondos];
  float y;
  float velY;
  float altura;

  Fondo() {
    for (int i = 0; i <images.length; i++) {
      images[i] = loadImage("fondo"+ i + ".jpg");
    }
    y = 0;
  }

  void dibujar(int numFondo_, float velY_, float altura_) {
    numFondo = numFondo_;
    velY = velY_;
    altura = altura_;
    image(images[numFondo], 0, y, width, altura);
    y+=velY;
    if (y==-6400) {
      y = 0;
    }
  }
}
