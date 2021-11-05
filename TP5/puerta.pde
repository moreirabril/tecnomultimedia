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
  
   void actualizar() {
    pushMatrix();
    pushStyle();
    image(puerta, x, y, ancho, alto);
    popStyle();
    popMatrix();
    
    }
}
