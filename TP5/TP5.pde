Juego juego;
void setup() {
  size (1200, 600);
  juego = new Juego();
}

void draw () {
  juego.dibujar();
}

void mousePressed(){
juego.presionar();
}
