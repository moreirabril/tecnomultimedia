
class Juego {
  Boton boton1;
  Boton boton2;
  String estado;
  PImage fondo, muerte;
  Enemigo[] enemigo;
  int cantidadE, vidas;
  Jugador jugador1;
  Puerta puerta0;

  Juego () {
    estado="inicio";
    boton1=new Boton ("JUGAR", width/2, height/2, 300, 100);
    boton2=new Boton ("REINICIAR", width/2, 500, 300, 100);
    fondo= loadImage("egipto.jpg");
    muerte=loadImage("Muerte.png");
    imageMode(CENTER);
    cantidadE=8;
    vidas=3;
    enemigo= new Enemigo [cantidadE];
    for (int i=0; i<cantidadE; i++) {
      enemigo[i]= new Enemigo();
    }
    jugador1=new Jugador();
    puerta0=new Puerta();
  }

  void actualizar() {
    if (estado=="inicio") {
      background(255, 0, 0);
      boton1.actualizar();
    } else if (estado=="jugando") {
      image(fondo, width/2, height/2, 1200, 600);
      for (int i=0; i<cantidadE; i++) {
        enemigo[i].actualizar();
      }
      puerta0.actualizar();
      jugador1.actualizar();
      jugador1.colision(enemigo);
      if (jugador1.vidas==0) {
        estado="morir";
        jugador1.vidas=3;
      }
      if (estado=="morir") {
        image(muerte, width/2, height/2, 1200, 600);
        boton2.actualizar();
      }
    }
  }

  void presionar () {
    if (estado=="inicio") {
      if (boton1.mouseEncima()) {
        estado="jugando";
      }
      if (estado=="morir") {
        if (boton1.mouseEncima()) {
          estado="inicio";
        }
      }
    }
  }
}
