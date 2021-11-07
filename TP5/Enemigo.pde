class Enemigo {
  float x, y, ancho, alto;
  PImage figura;

  Enemigo () {
    ancho=110;
    alto=110;
    ubicacion();
    figura= loadImage("anubisEnemigo.png");
    imageMode(CENTER);
  }
  
  void dibujar() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    image(figura, 0, 0, ancho, alto);
    popStyle();
    popMatrix();
    if (random(1, 1000)<15) {
      ubicacion();
    }
  }

  void ubicacion () {
    x=random(200, 1000);
    y=random(0, height);
  }
    float getX() {
    return x;
  }
  float getY() {
    return y;
  }
}
