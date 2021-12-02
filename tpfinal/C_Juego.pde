//Declaraciond de la clase juego
class Juego {
  Fondo fondo;
  Enemigo[] enemigo;
  Player p;
  int cantEnemigos;
  int puntos = 0;
  int tempo = 0;
  int seg;
  int min;
  int correrTexto;
  String estadoJuego;

  Juego() {
    cantEnemigos = 3;
    enemigo = new Enemigo[cantEnemigos];
    for (int i=0; i<cantEnemigos; i++) {
      enemigo[i] = new Enemigo();
    }
    //jugador
    p = new Player();
    //fondo
    fondo = new Fondo();
  }

  void game_() {
    jugando_();
    tempo();
    text(puntos, 50, 50);
    textoExplicativo();
    tempo();
    ganoperdio();
  }
  void jugando_() {
    //el juego en si
    background(255);
    fondo.dibujar(7, -2, 7000);
    for (int i=0; i<cantEnemigos; i++) {
      enemigo[i].actualizar();
      //colision
      if (enemigo[i].colision(p.x, p.y, p.ancho, p.alto)) {
        puntos++;
        println(puntos);
      }
      p.move();
      p.draw_();
    }
  }
  void tempo() {
    //tiempo
    textAlign(CENTER);
    textSize(40);
    if (seg<=59) {
      text(min+":"+seg, width/2, 40);
      seg = 0 + frameCount/60;
    } else {
      min = + 1;
      seg = 0;
      text(min+":"+seg, width/2, 40);
    }
  }
  boolean ganoperdio() {
    if (puntos>=30) {
      return true;
    } else {
      return false;
    }
  }  
  boolean ganoperdio2() {
    if (seg>=30) {
      return true;
    } else {
      return false;
    }
  }
  void reiniciar() {
    puntos = 0;
    min = 0;
    frameCount = 0;
  }
  void textoExplicativo() {
    pushMatrix();
    pushStyle();
    fill(#FF86F3);
    rect(0, height-25, width, 25);
    fill(0);
    textSize(15);
    textAlign(CENTER, CENTER);
    text("¡Atrapa 30 peces con la red para ganar! Antes que pasen 30 segundos. Usa las flechas del teclado para mover la red", width/2+300-correrTexto, height-15);
    if (correrTexto < 1000) {
      correrTexto++;
    } else {
      correrTexto = -450;
    }
    popStyle();
    popMatrix();
  }
  void teclapresionada() {
    p.setMove(keyCode, true);
  }
  void teclasoltada() {
    p.setMove(keyCode, false);
  }
}
