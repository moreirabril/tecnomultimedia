class Aventura {
  PImage [] introduccion = new PImage [8];
  PImage [] piedra = new PImage [3];
  PImage [] dracula = new PImage [4];
  PImage[] egipto= new PImage [11];
  PImage ganar;
  PImage creditos;
  PImage puertas;
  PImage muerto;
  PImage investigador;
  int pantalla;
  Dialogo dialogo;
  Boton boton1;
  Boton boton2;

  Aventura () {
    size(1280, 720);
    pantalla=0;
    imageMode (CENTER);
    ganar=loadImage("ganar.png");
    creditos= loadImage ("creditos.png");
    puertas= loadImage ("puertas.png");
    muerto= loadImage("Muerte.png");
    investigador=loadImage("investigador.jpeg");
    introduccion[0] = loadImage("Introduccion0.png");
    piedra[0]=loadImage ("Piedra0.png");
    for ( int i=0; i<introduccion.length; i++) {
      introduccion[i] = loadImage("Introduccion"+i+".png");
    }
    piedra[0]=loadImage ("Piedra0.png");
    for ( int i=0; i<piedra.length; i++) {
      piedra[i]=loadImage("Piedra"+i+".png");
    }
    dracula[0]=loadImage ("Dracula0.png");
    for ( int i=0; i<dracula.length; i++) {
      dracula[i]=loadImage("Dracula"+i+".png");
    }
    egipto[0]=loadImage("Egipto0.png");
    for ( int i=0; i<egipto.length; i++) {
      egipto[i]=loadImage("Egipto"+i+".png");
    }
    dialogo= new Dialogo();
    boton1=new Boton ("Camino directo,pero sin escondites.", 900, 580, 450, 50);
    boton2=new Boton ("Camino largo,pero con escondites.", 900, 650, 450, 50);
  }


  void dibujar () {
    if ( pantalla == 0) {
      image(ganar, 640, 360, 1280, 720);
      fill(255);
      textSize(70);
      text("[Press to start]", 700, 320);
    } 
    if ( pantalla == 1) {
      dialogo.dibujar(0, introduccion[0]);
    }
    if (pantalla == 2) {
      dialogo.dibujar(1, introduccion[1]);
    }
    if (pantalla == 3) {
      image(introduccion[2], 640, 360, 1280, 720);
    }
    if (pantalla == 4) {
      image(introduccion[3], 640, 360, 1280, 720);
    }
    if (pantalla == 5) {
      image(introduccion[4], 640, 360, 1280, 720);
    }
    if (pantalla == 6) {
      image(introduccion[5], 640, 360, 1280, 720);
    }
    if (pantalla == 7) {
      image(introduccion[6], 640, 360, 1280, 720);
    }
    if (pantalla == 8) {
      dialogo.dibujar(2, introduccion[7]);
    }
    if (pantalla == 9) {
      dialogo.dibujar(3, puertas);
    }
    if (pantalla==10) {

      image(piedra[0], 640, 360, 1280, 720);
    }
    if (pantalla==11) {
      dialogo.dibujar(4, piedra[1]);
    }
    if (pantalla==12) {
      dialogo.dibujar(5, piedra[2]);
    }
    if (pantalla==13) {
      dialogo.dibujar(6, muerto);
    }
    if (pantalla ==14) {
      image(dracula[0], 640, 360, 1280, 720);
    }
    if (pantalla==15) {
      dialogo.dibujar(7, dracula[1]);
    }
    if (pantalla==16) {
      dialogo.dibujar(8, dracula[2]);
    }
    if (pantalla==17) {
      dialogo.dibujar(9, dracula[3]);
    }
    if (pantalla==18) {
      image(egipto[0], 640, 360, 1280, 720);
    }
    if (pantalla==19) {
      dialogo.dibujar(10, egipto[1]);
    }
    if (pantalla==20) {
      dialogo.dibujar(11, egipto[2]);
    }
    if (pantalla==21) {
      dialogo.dibujar(12, egipto[3]);
    }
    if (pantalla==22) { 
      dialogo.dibujar(13, egipto[4]);
      boton1.dibujar();
      boton2.dibujar();
    }
    if (pantalla==23) {
      dialogo.dibujar(14, investigador);
    }
    if (pantalla==24) {
      dialogo.dibujar(15, egipto[5]);
    }
    if (pantalla==25) {
      dialogo.dibujar(16, egipto[6]);
    }  
    if (pantalla==26) {
      dialogo.dibujar(17, egipto[7]);
    }
    if (pantalla==27) { 
      dialogo.dibujar(18, egipto[8]);
    }
    if (pantalla==28) {
      dialogo.dibujar(19, egipto[9]);
    }
    if (pantalla==29) {
      juego.dibujar();
    }

    if (pantalla==30) {
      image(creditos, 640, 360, 1280, 720);
    }
  }

  void presionAv () {
    if (pantalla==0 && mouseX < width && mouseY < height ) {
      pantalla=1;
    } else if (pantalla==1 && mouseX < width && mouseY < height ) {
      pantalla=2;
    } else if (pantalla==2 && mouseX < width && mouseY < height ) {
      pantalla=3;
    } else if (pantalla==3 && mouseX < width && mouseY < height ) {
      pantalla=4;
    } else if (pantalla==4 && mouseX < width && mouseY < height ) {
      pantalla=5;
    } else if (pantalla==5 && mouseX < width && mouseY < height ) {
      pantalla=6;
    } else if (pantalla==6 && mouseX < width && mouseY < height ) {
      pantalla=7;
    } else if (pantalla==7 && mouseX < width && mouseY < height ) {
      pantalla=8;
    } else if (pantalla==8 && mouseX < width && mouseY < height ) {
      pantalla=9;
    } else if (pantalla==9 && mouseX > 150 && mouseX < 150+200 && mouseY > 180 && mouseY < 180+350) {
      pantalla=10;
    } else if (pantalla==10 && mouseX < width && mouseY < height ) {
      pantalla=11;
    } else if (pantalla==11 && mouseX < width && mouseY < height ) {
      pantalla=12;
    } else if (pantalla==12 && mouseX < width && mouseY < height ) {
      pantalla=13;
    } else if (pantalla==9 && mouseX > 540 && mouseX < 540+200 && mouseY > 180 && mouseY < 180+350) {
      pantalla=14;
    } else if (pantalla==14 && mouseX < width && mouseY < height) {
      pantalla=15;
    } else if (pantalla==15 && mouseX < width && mouseY < height) {
      pantalla=16;
    } else if (pantalla==16 && mouseX < width && mouseY < height) {
      pantalla=17;
    } else if (pantalla==17 && mouseX < width && mouseY < height) {
      pantalla=13;
    } else if (pantalla==9 && mouseX > 930 && mouseX < 930+200 && mouseY > 180 && mouseY < 180+350) {
      pantalla=18;
    } else if (pantalla==18 && mouseX < width && mouseY < height ) {
      pantalla=19;
    } else if (pantalla==19 && mouseX < width && mouseY < height ) {
      pantalla=20;
    } else if (pantalla==20 && mouseX < width && mouseY < height ) {
      pantalla=21;
    } else if (pantalla==21 && mouseX < width && mouseY < height ) {
      pantalla=22;
    } else if (pantalla==22 && mouseX > 660 && mouseX < 660+450 && mouseY > 550 && mouseY < 550+50) { 
      pantalla=23;
    } else if (pantalla==22 && mouseX > 660 && mouseX < 660+450 && mouseY > 630 && mouseY < 630+50) {
      pantalla=24;
    } else if (pantalla==24 && mouseX < width && mouseY < height ) {
      pantalla=25;
    } else if (pantalla==25 && mouseX < width && mouseY < height ) {
      pantalla=26;
    } else if (pantalla==26 && mouseX < width && mouseY < height ) {
      pantalla=27;
    } else if (pantalla==27 && mouseX < width && mouseY < height ) {
      pantalla=28;
    } else if (pantalla==28 && mouseX < width && mouseY < height ) {
      pantalla=29;
    } else if (juego.estado.equals("ganar") && pantalla==29 && mouseX < width && mouseY < height ) {
      pantalla=30;
    }
  }

  void teclas () {
    if (key=='r'&& pantalla==13 ) {
      pantalla=9;
    } else if (key=='r'&& pantalla==23 ) {
      pantalla=9;
    } else if (key=='r'&& pantalla==30 ) {
      pantalla=0;
    }
  }
}
