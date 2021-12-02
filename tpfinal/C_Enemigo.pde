//clase enemigo
class Enemigo {
  float x, y, ancho, alto;
  float despX, despY;
  int contador;
  PImage imgPez1;
  
  Enemigo() {
    x = random(50, width-50);
    y = random(50, height-50);
    ancho = 60;
    alto = 30;
    despX = random(3, 6);
    despY = random(3, 6);
    contador = 50;
    ubicacionrandom();
    imgPez1 = loadImage("pez1.png");
  }
  
  void draw_() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    float ang = atan2(despY, despX);
    rotate(ang);
    rectMode(CENTER);
    imageMode(CENTER);
    image(imgPez1, 0, 0, ancho, alto);
    //fill(200, 50, 120);
    //rect(0, 0, ancho, alto);
    popMatrix();
    popStyle();
  }
  void ubicacionrandom() {
    x = random (0, width);
    y = 0;
  }
  void move_() {
    if (contador>0) {
      contador--;
    } else {
      contador = 50;
      despX = random(-3, 3);
    }
    x+=despX;
    y+=despY;

    if (x>width+ancho/2) {
      x=-ancho/2;
    }
    if (x<-ancho/2) {
      x=width+ancho/2;
    }
    if (y>height+alto/2) {
      y=-alto/2;
    }
    if (y<-alto/2) {
      y=height+alto/2;
    }
  }
  void actualizar() {
    move_();
    draw_();
  }
  //metodo para evaluar colision
  boolean colision(float x_, float y_, float ancho_, float alto_) {
    if (x-ancho/2 < x_+ancho_/2 && x+ancho/2 > x_-ancho_/2 && y-alto/2 < y_+alto_/2 && y+alto/2 > y_-alto_/2) {
      ubicacionrandom();
      return true;
    } else {
      return false;
    }
  }
}
