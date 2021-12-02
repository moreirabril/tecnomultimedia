//clase Boton
class Boton {
  //popiedades de la clase
  float x, y, ancho, alto, tama;
  String label;
  
  //constructor:
  Boton(String label_, float x_, float y_, float ancho_, float alto_, float tama_) {
    x = x_;
    y = y_;
    label = label_;
    ancho = ancho_;
    alto = alto_;
    tama = tama_;
  }
  
  //funciones
  void actualizar() {
    dibujar();
  }
  void dibujar() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    if (estaEncima()) {
    fill(#FF86F3);
    } else {
    fill(#86F2FF);
    }
    stroke(255);
    strokeWeight(2);
    rectMode(CENTER);
    noStroke();
    rect(0, 0, ancho, alto, 5);
    //escribo la etiqueta
    fill(0);
    textSize(tama);
    textAlign(CENTER, CENTER);
    text(label, 0, -3);
    popStyle();
    popMatrix();
  }
  boolean estaEncima() {
    if (mouseX > x-ancho/2 && mouseX < x+ancho/2 && mouseY > y-alto/2 && mouseY < y+alto/2) {
      return true;
    } else { 
      return false;
    }
  }
}
