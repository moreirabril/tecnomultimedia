//clase aventura
class Aventura {
  //popiedades
  Fondo fondo;
  Textos textos;
  Boton boton1, boton2, boton3, boton4, boton5, boton6, boton7, boton8, boton9, boton10, boton11, boton12, boton13, boton14, boton15, boton16, boton17, boton18, boton19, boton20, boton21, boton22;
  Juego juego;
  String estadoJuego;

  //constructor
  Aventura() {
    //estado
    estadoJuego = "inicio";
    //fondo
    fondo = new Fondo();
    //textos
    textos = new Textos();
    //botones
    boton1 = new Boton ("Iniciar", width/3, height/2, 135, 50, 30);
    boton2 = new Boton ("Creditos", width/3, height/2+75, 135, 50, 30);
    //
    boton3 = new Boton ("Volver", 525, 50, 90, 35, 25);
    //
    boton4 = new Boton ("Supervivientes", 100, height-200, 120, 40, 15);
    boton5 = new Boton ("Recursos", width-100, height-200, 120, 40, 15);
    boton6 = new Boton ("Intento liberarlo", 100, height-200, 140, 40, 15);
    boton7 = new Boton ("Lo abandono", width-100, height-200, 120, 40, 15);
    boton8 = new Boton ("Bodega de equipaje", 100, height-200, 150, 40, 15);
    boton9 = new Boton ("Cocina del avion", width-100, height-200, 130, 40, 15);
    boton10 = new Boton ("Siguiente", width-100, height-200, 120, 40, 15);
    boton11 = new Boton ("Siguiente", width-100, height-200, 120, 40, 15);
    boton12 = new Boton ("Buscar recursos", 100, height-200, 130, 40, 15);
    boton13 = new Boton ("Salir del avion", width-100, height-200, 130, 40, 15);
    boton14 = new Boton ("Tratar el pie", 100, height-200, 130, 40, 15);
    boton15 = new Boton ("Volver al avion", width-100, height-200, 130, 40, 15);
    boton16 = new Boton ("Siguiente", width-100, height-200, 120, 40, 15);
    boton17 = new Boton ("Descansas", 100, height-200, 120, 40, 15);
    boton18 = new Boton ("Continuar", width-100, height-200, 120, 40, 15);
    boton19 = new Boton ("Intento capturarlos", 100, height-200, 140, 40, 15);
    boton20 = new Boton ("Sigo caminando", width-100, height-200, 130, 40, 15);
    boton21 = new Boton ("Acampo", 100, height-200, 120, 40, 15);
    boton22 = new Boton ("Sigo caminando", width-100, height-200, 130, 40, 15);
    //jugando
    juego = new Juego();
  }

  //funciones
  void menu() {
    actualizar();
  }
  void actualizar() {
    if (estadoJuego.equals("inicio")) {
      //opciones de inicio
      background(0);
      fondo.dibujar(4, 0, height-50);
      fill(0);
      rect(0, 0, width, 50);
      textos.dibujar(1, 150, 35, 0, "Aventura Gráfica: perdido");
      //iniciar
      boton1.actualizar();
      //Creditos
      boton2.actualizar();
    } else if (estadoJuego.equals("jugando")) {
      //pantalla de inicio de la aventura
      fondo.dibujar(0, 0, height-150);
      textos.dibujar(0, 150, 15, 1, " ");
      //Supervivientes
      boton4.actualizar();
      //Recursos
      boton5.actualizar();
    } else if (estadoJuego.equals("jugando1")) {
      //Supervivientes
      fondo.dibujar(0, 0, height-150);
      textos.dibujar(0, 150, 15, 7, " ");
      //Intento liberarlo
      boton6.actualizar();
      //Lo abandono
      boton7.actualizar();
    } else if (estadoJuego.equals("jugando2")) {
      //Recursos
      fondo.dibujar(0, 0, height-150);
      textos.dibujar(0, 150, 15, 2, " ");
      //Bodega de equipaje
      boton8.actualizar();
      //Cocina del avion
      boton9.actualizar();
    } else if (estadoJuego.equals("jugando3")) {
      //FIN 1
      fondo.dibujar(1, 0, height-150);
      textos.dibujar(0, 150, 15, 3, " ");
      //Volver 
      boton3.actualizar();
    } else if (estadoJuego.equals("jugando4")) {
      //Cocina del avion
      fondo.dibujar(0, 0, height-150);
      textos.dibujar(0, 150, 15, 4, " ");
      //Siguiente
      boton10.actualizar();
    } else if (estadoJuego.equals("jugando5")) {
      //Siguiente
      fondo.dibujar(0, 0, height-150);
      textos.dibujar(0, 150, 15, 5, " ");
      //Siguiente
      boton11.actualizar();
    } else if (estadoJuego.equals("jugando6")) {
      //FIN 2
      fondo.dibujar(1, 0, height-150);
      textos.dibujar(0, 150, 15, 6, " ");
      //Volver
      boton3.actualizar();
    } else if (estadoJuego.equals("jugando7")) {
      //Salir del avion
      fondo.dibujar(0, 0, height-150);
      textos.dibujar(0, 150, 15, 8, " ");
      //Buscar recursos
      boton12.actualizar();
      //Salir del avion
      boton13.actualizar();
    } else if (estadoJuego.equals("jugando8")) {
      //Liberacion
      fondo.dibujar(0, 0, height-150);
      textos.dibujar(0, 150, 13, 9, " ");
      //Tratar el pie
      boton14.actualizar();
      //Volver al avion
      boton15.actualizar();
    } else if (estadoJuego.equals("jugando9")) {
      //FIN 3
      fondo.dibujar(1, 0, height-150);
      textos.dibujar(0, 150, 15, 10, " ");
      //Volver
      boton3.actualizar();
    } else if (estadoJuego.equals("jugando10")) {
      //Tratamiento
      fondo.dibujar(3, 0, height-150);
      textos.dibujar(0, 150, 13, 11, " ");
      //Siguiente
      boton16.actualizar();
    } else if (estadoJuego.equals("jugando11")) {
      //Tratamiento Siguiente
      fondo.dibujar(3, 0, height-150);
      textos.dibujar(0, 150, 13, 12, " ");
      //Descansas
      boton17.actualizar();
      //Continuar
      boton18.actualizar();
    } else if (estadoJuego.equals("jugando12")) {
      //Continuar caminando FIN 4
      fondo.dibujar(1, 0, height-150);
      textos.dibujar(0, 150, 15, 13, " ");
      //Volver
      boton3.actualizar();
    } else if (estadoJuego.equals("jugando13")) {
      //Peces en el rio
      juego.reiniciar();
      fondo.dibujar(2, 0, height-150);
      textos.dibujar(0, 150, 15, 14, " ");
      //Intento capturarlos
      boton19.actualizar();
      //Sigo caminando
      boton20.actualizar();
    } else if (estadoJuego.equals("game")) {
      //pantalla de juego
      //poner boton continuar para seguir a la pantalla 14
      //o volver si perdiste
      juego.game_();
      victoria();
      derrota();
    } else if (estadoJuego.equals("jugando14")) {
      //Peces en el rio 2
      juego.reiniciar();
      fondo.dibujar(5, 0, height-150);
      textos.dibujar(0, 150, 15, 15, " ");
      //Acampo
      boton21.actualizar();
      //Sigo caminando
      boton22.actualizar();
    } else if (estadoJuego.equals("jugando15")) {
      //Acampo FIN 6 (Mejor final)
      fondo.dibujar(6, 0, height-150);
      Textoenmedio(300, 100, "¡GANASTE!");
      textos.dibujar(0, 150, 13, 17, " ");
      //Volver
      boton3.actualizar();
    } else if (estadoJuego.equals("jugando16")) {
      //Acampo FIN 5
      fondo.dibujar(6, 0, height-150);
      Textoenmedio(300, 100, "¡GANASTE!");
      textos.dibujar(0, 150, 13, 16, " ");
      //Volver
      boton3.actualizar();
    } else if (estadoJuego.equals("creditos")) {
      //mostrando lo que corresponde a creditos
      background(0);
      fondo.dibujar(4, 0, height-50);
      fill(0);
      rect(0, 0, width, 50);
      //Creditos
      Textoenmedio(150, 35, "TP Final");
      Textoenmedio(200, 35, "Comision 3");
      Textoenmedio(250, 35, "Profesor: David Bedoian");
      Textoenmedio(300, 35, "Alumno: Jair Gonzalez (88527/5)");
      Textoenmedio(350, 25, "Juego Original");
      Textoenmedio(380, 15, "Las imagenes fueron recolectadas de distintas fuentes");
      Textoenmedio(450, 35, "Gracias");
      boton3.actualizar();
    } else if (estadoJuego.equals("gano")) {
      fondo.dibujar(2, 0, height);
      boton3.actualizar();
    } else if (estadoJuego.equals("perdio")) {
      fondo.dibujar(4, 0, height);
      boton3.actualizar();
      juego.reiniciar();
    }
    //fill(255, 0, 0);
    //text(estadoJuego, 50, 50);
  }
  void click() {
    if (estadoJuego.equals("inicio")) {
      if (boton1.estaEncima()) {
        cambiarEstado("jugando");
      } else if (boton2.estaEncima()) {
        cambiarEstado("creditos");
      }
    } else if (estadoJuego.equals("jugando")) {
      if (boton4.estaEncima()) {
        cambiarEstado("jugando1");
      } else if (boton5.estaEncima()) {
        cambiarEstado("jugando2");
      }
    } else if (estadoJuego.equals("jugando1")) {
      if (boton6.estaEncima()) {
        cambiarEstado("jugando8");
      } else if (boton7.estaEncima()) {
        cambiarEstado("jugando7");
      }
    } else if (estadoJuego.equals("jugando2")) {      
      if (boton8.estaEncima()) {
        cambiarEstado("jugando3");
      } else if (boton9.estaEncima()) {
        cambiarEstado("jugando4");
      }
    } else if (estadoJuego.equals("jugando3")) {
      //FIN 1
      if (boton3.estaEncima()) {
        cambiarEstado("inicio");
      }
    } else if (estadoJuego.equals("jugando4")) {
      if (boton10.estaEncima()) {
        cambiarEstado("jugando5");
      }
    } else if (estadoJuego.equals("jugando5")) {
      if (boton11.estaEncima()) {
        cambiarEstado("jugando6");
      }
    } else if (estadoJuego.equals("jugando6")) {
      //FIN2
      if (boton3.estaEncima()) {
        cambiarEstado("inicio");
      }
    } else if (estadoJuego.equals("jugando7")) {
      if (boton12.estaEncima()) {
        cambiarEstado("jugando2");
      } else if (boton13.estaEncima()) {
        cambiarEstado("jugando6");
      }
    } else if (estadoJuego.equals("jugando8")) {
      if (boton14.estaEncima()) {
        cambiarEstado("jugando10");
      } else if (boton15.estaEncima()) {
        cambiarEstado("jugando9");
      }
    } else if (estadoJuego.equals("jugando9")) {
      //FIN 3
      if (boton3.estaEncima()) {
        cambiarEstado("inicio");
      }
    } else if (estadoJuego.equals("jugando10")) {
      if (boton16.estaEncima()) {
        cambiarEstado("jugando11");
      }
    } else if (estadoJuego.equals("jugando11")) {
      if (boton17.estaEncima()) {
        cambiarEstado("jugando13");
      } else if (boton18.estaEncima()) {
        cambiarEstado("jugando12");
      }
    } else if (estadoJuego.equals("jugando12")) {
      //FIN 4
      if (boton3.estaEncima()) {
        cambiarEstado("inicio");
      }
    } else if (estadoJuego.equals("jugando13")) {
      if (boton19.estaEncima()) {
        cambiarEstado("game");
      } else if (boton20.estaEncima()) {
        cambiarEstado("jugando12");
      }
    } else if (estadoJuego.equals("game")) {
      //pantalla de juego
      //poner boton continuar para seguir a la pantalla 14
      //o volver si perdiste
      //-----------
    } else if (estadoJuego.equals("jugando14")) {
      if (boton21.estaEncima()) {
        cambiarEstado("jugando16");
      } else if (boton22.estaEncima()) {
        cambiarEstado("jugando15");
      }
    } else if (estadoJuego.equals("jugando15")) {
      //FIN 5 
      if (boton3.estaEncima()) {
        cambiarEstado("inicio");
      }
    } else if (estadoJuego.equals("jugando16")) {
      //FIN 6 (Mejor final)
      if (boton3.estaEncima()) {
        cambiarEstado("inicio");
      }
    } else if (estadoJuego.equals("creditos")) {
      //mostrando lo que corresponde a creditos
      if (boton3.estaEncima()) {
        cambiarEstado("inicio");
      }
    } else if (estadoJuego.equals("gano")) {
      //mostrando lo que corresponde a creditos
      if (boton3.estaEncima()) {
        cambiarEstado("inicio");
      }
    } else if (estadoJuego.equals("perdio")) {
      //mostrando lo que corresponde a creditos
      if (boton3.estaEncima()) {
        cambiarEstado("inicio");
      }
    }
  }
  void victoria() {
    if (juego.ganoperdio()) {
      cambiarEstado("jugando14");
    }
  }
  void derrota() {
    if (juego.ganoperdio2()) {
      cambiarEstado("perdio");
    }
  }
  //metodos para ejecutar cambios de estado:
  void cambiarEstado(String nuevoEstado_) {
    estadoJuego = nuevoEstado_;
    if (nuevoEstado_.equals("inicio")) {
      //
    } else if (nuevoEstado_.equals("jugando")) {
      //
    } else if (nuevoEstado_.equals("jugando1")) {
      //
    } else if (nuevoEstado_.equals("jugando2")) {
      //
    } else if (nuevoEstado_.equals("jugando3")) {
      //
    } else if (nuevoEstado_.equals("jugando4")) {
      //
    } else if (nuevoEstado_.equals("jugando5")) {
      //
    } else if (nuevoEstado_.equals("jugando6")) {
      //
    } else if (nuevoEstado_.equals("jugando7")) {
      //
    } else if (nuevoEstado_.equals("jugando8")) {
      //
    } else if (nuevoEstado_.equals("jugando9")) {
      //
    } else if (nuevoEstado_.equals("jugando10")) {
      //
    } else if (nuevoEstado_.equals("jugando11")) {
      //
    } else if (nuevoEstado_.equals("jugando12")) {
      //
    } else if (nuevoEstado_.equals("jugando13")) {
      //
    } else if (nuevoEstado_.equals("jugando14")) {
      //
    } else if (nuevoEstado_.equals("jugando15")) {
      //
    } else if (nuevoEstado_.equals("jugando16")) {
      //
    } else if (nuevoEstado_.equals("game")) {
      //
    } else if (nuevoEstado_.equals("gano")) {
      //
    } else if (nuevoEstado_.equals("perdio")) {
      //
    }
  }
  void Textoenmedio(float y1_, float tam_, String texto) {
    pushStyle();
    fill(#F50207);
    textSize(tam_);
    textAlign(CENTER, CENTER);
    text(texto, width/2, y1_);
    popStyle();
  }
  void teclapresionada2() {
    juego.teclapresionada();
  }
  void teclasoltada2() {
    juego.teclasoltada();
  }
}
