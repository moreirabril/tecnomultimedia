class Jugador {
  float x, y, ancho, alto, vidas;
  float d=10;
  PImage figura;

  Jugador () {
    x=100;
    y=height/2;
    ancho=90;
    alto=90;
    vidas=3;
    figura= loadImage("jugador.png");
    imageMode(CENTER);
  }
  void dibujar() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    image(figura, 0, 0, ancho, alto);
    popStyle();
    popMatrix();
    if (keyPressed) {
      if (keyCode==LEFT) {
        x-=d;
      } else if (keyCode==RIGHT) {
        x+=d;
      } else if (keyCode==UP) {
        y-=d;
      } else if (keyCode==DOWN) {
        y+=d;
      }
      x=constrain(x, 0, width);
      y=constrain(y, 0, height);
    }
   
   void reciclar(){
     x=100;
     y=height/2;
}
    
  }

  void colision (Enemigo[] en) {
    for (int i=0; i<en.length; i++) {
      float x_enemigo=en[i].getX();
      float y_enemigo=en[i].getY();
      float d=dist (x_enemigo, y_enemigo, x, y);
      if (d<80) {
        x=100;
        y=height/2;
        vidas--;
      }
    }
  }

}
