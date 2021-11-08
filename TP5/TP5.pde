
//La idea del mini-juego es que tiene que atravezar todo el lugar sin chocar con ningun enemigo para salir por la puerta que es cuando ganaria,pero posee tres intentos(3vidas).


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
