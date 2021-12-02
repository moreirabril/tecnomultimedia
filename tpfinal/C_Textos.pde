//clase textos para la aventura
class Textos {
  float tipo;
  float y1, tam;
  int numero;
  String [] textos;
  String texto2;

  Textos() {
    textos = loadStrings("data/textos.txt");
  }
  
  void dibujar(float tipo_, float y1_, float tam_, int numero_, String texto2_) {
    y1 = y1_;
    tam = tam_;
    numero = numero_;
    tipo = tipo_;
    texto2 = texto2_;
    
    pushMatrix();
    pushStyle();
    if (tipo_ == 0) {
      fill(#484848);
      rect(0, width, height, -y1_);
      fill(255);
      textSize(tam_);
      text(textos[numero_], 15, height-y1_+24, width-24, height-10);
    } else {
      fill(255);
      textSize(tam_);
      textAlign(CENTER, CENTER);
      text(texto2_, width/2, y1_);
    }
    popStyle();
    popMatrix();
  }
}
