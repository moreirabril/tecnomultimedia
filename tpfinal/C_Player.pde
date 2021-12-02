class Player {
  boolean isLeft, isRight, isUp, isDown;
  float x, y, ancho, alto;
  PImage imgRed;
  
  Player() {
    x = width/2;
    y = height/2;
    ancho = 60;
    alto = 60;
    imgRed = loadImage("red2.png");
  }
  
  void draw_() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    rectMode(CENTER);
    //fill(40, 200, 0);
    //rect(0, 0, ancho, alto);
    image(imgRed, 0, 0, 80, 160);
    popMatrix();
    popStyle();
  }
  void move() {
    x = constrain(x + 1.5*(int(isRight) - int(isLeft)), -ancho/2, width-ancho/2);
    y = constrain(y + 1.5*(int(isDown)  - int(isUp)), -alto/2, height-alto/2);
  }
  boolean setMove(int k, boolean b) {
    if (k==LEFT) {
      return isLeft = b;
    } else if (k==RIGHT) {
      return isRight = b;
    } else if (k==UP) {
      return isUp = b;
    } else if (k==DOWN) {
      return isDown = b;
    }  
    return b;
  }
}
