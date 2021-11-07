class Puerta {
  float x, y, ancho, alto;
  PImage puerta ;

  Puerta () {
    ancho=140;
    alto=170;
    x=1110;
    y=300;
    puerta= loadImage("puerta.png");
    imageMode(CENTER);
  }

  void dibujar() {
    pushMatrix();
    pushStyle();
    image(puerta, x, y, ancho, alto);
    popStyle();
    popMatrix();
  }

void colision(float x_,float y_,float r_){
    if (dist(x,y,x_,y_)< ancho/2+r_) {
    juego.estado="ganar";
}
}
}
