class Juego {
  Boton boton1;
  Boton boton2;
  String estado;
  PImage fondo;
  Enemigo[] enemigo;
  int cantidadE,vidas;
  Jugador jugador1;

  Juego () {
    estado="inicio";
    boton1=new Boton ("JUGAR", width/2, height/2, 300, 100);
    fondo= loadImage("egipto.jpg");
    imageMode(CENTER);
    cantidadE=8;
    vidas=3;
    enemigo= new Enemigo [cantidadE];
    for (int i=0; i<cantidadE; i++) {
      enemigo[i]= new Enemigo();
    }
    jugador1=new Jugador();
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
      jugador1.actualizar();
      jugador1.colision(enemigo);
    }
  }

  void presionar () {
    if (estado=="inicio") {
      if (boton1.mouseEncima()) {
        estado="jugando";
      }
    }
  }
}
