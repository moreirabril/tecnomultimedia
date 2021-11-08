class Juego {
  Boton boton1;
  Boton boton2;
  Boton boton3;
  String estado;
  PImage fondo, muerte, ganar, inicio;
  Enemigo[] enemigo;
  int cantidadE, vidas;
  Jugador jugador1;
  Puerta puerta0;

  Juego () {
    estado="inicio";
    boton1=new Boton ("JUGAR", 300, 100, 300, 100);
    boton2=new Boton ("REINICIAR", width/2, 510, 300, 100);
    boton3=new Boton ("REINICIAR", 900, 510, 300, 100);
    fondo= loadImage("egipto.jpg");
    muerte=loadImage("Muerte.png");
    ganar=loadImage("ganar.png");
    inicio=loadImage("inicio.jpg");
    imageMode(CENTER);
    textAlign(CENTER, CENTER);
    cantidadE=8;
    vidas=3;
    enemigo= new Enemigo [cantidadE];
    for (int i=0; i<cantidadE; i++) {
      enemigo[i]= new Enemigo();
    }
    jugador1=new Jugador();
    puerta0=new Puerta();
  }

  void dibujar() {
    if (estado=="inicio") {
      image(inicio, width/2, height/2, 1200, 600);
      boton1.actualizar();
    } 
    if (estado=="jugando") {
      image(fondo, width/2, height/2, 1200, 600);
      for (int i=0; i<cantidadE; i++) {
        enemigo[i].dibujar();
      }
      puerta0.dibujar();
      jugador1.dibujar();
      jugador1.colision(enemigo);
      puerta0.colision(jugador1.x, jugador1.y, jugador1.ancho/2);
      textSize(30);
      text(jugador1.vidas, 40, 40);
      if (jugador1.vidas==0) {
        estado="morir";
        jugador1.vidas=3;
      }
    }

    if (estado=="morir") {
      image(muerte, width/2, height/2, 1200, 600);
      boton2.actualizar();
    }

    if (estado=="ganar") {
      image(ganar, width/2, height/2, 1200, 600);
      boton3.actualizar();
      textSize(40);
      text("Bien! Lograste escapar,\ny volver a tu mundo!", 800, 300);
      jugador1.reciclar();
    }
  }

  void presionar () {
    if (estado=="inicio" && mouseX > 150 && mouseX < 150+300 && mouseY > 50 && mouseY < 50+100 ) { //(450,250,300,100)
      boton1.mouseEncima(); 
      estado="jugando";
    } else if (estado=="morir" && mouseX > 450 && mouseX < 450+300 && mouseY > 460 && mouseY < 460+100 ) { //(450,460,300,100)
      boton2.mouseEncima(); 
      estado="inicio";
    } else if (estado=="ganar" && mouseX > 750 && mouseX < 750+300 && mouseY > 460 && mouseY < 460+100 ) { //(750,460,300,100)
      boton3.mouseEncima(); 
      estado="inicio";
    }
  }
}
