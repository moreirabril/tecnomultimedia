//Video YouTube: https://youtu.be/2gccEngzA5M

Aventura aventura;
Juego juego;
void setup() {
  size (1280, 720);
  aventura= new Aventura();
  juego= new Juego();

}

void draw () {
 aventura.dibujar();
}

void mouseReleased() {
  aventura.presionAv();
  juego.presionar();

}

void keyPressed () {
  aventura.teclas();
}
