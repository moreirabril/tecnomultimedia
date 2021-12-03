class Dialogo {
  String []textos = new String [21];
  PImage nombreImg;
  PFont miLetra;
  
  Dialogo () {
  miLetra= loadFont ("GillSansMT-Italic-50.vlw");
  textos=loadStrings("data/texto.txt");
  }

  void dibujar (int p,PImage nombreImg) {
    pushMatrix();
    pushStyle();
    image(nombreImg, 640, 360, 1280, 720);
    //rectMode(CENTER);
    fill(255, 175, 237);
    rect(50, 530, 1160, 160, 40);
    fill(255);
    textAlign(LEFT, CENTER);
    textFont(miLetra);
    textSize(25);
    //textAlign(CENTER, CENTER);
    text(textos[p], 100, 590);
    popStyle();
    popMatrix();
  }
}
