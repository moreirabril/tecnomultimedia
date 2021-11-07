// Hola profe,no pude terminar bien de hacer el mini-juego.Sin duda hay algo que no estoy entendiendo bien como hacer,ya que al momento de que el jugador,
//colisiona con el enemigo si funciona bien,pero al momento de que colisiona con la puerta que pasaria a la pantalla de ganar vuelve a la pantalla inicio 
//pero al hacer click en JUGAR otra vez,la pantalla vuelve a estado "ganar" y no avanza a "jugando".

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
