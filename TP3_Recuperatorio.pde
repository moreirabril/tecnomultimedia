int esc;
float r, g, paso, paso2, r1, g2, b3, r4, g5, b6, grilla, rojo, verde, azul, veloc;
boolean aumento=true;


void setup() {
  size( 1000, 500 );
  textSize( 32 );
  textAlign( CENTER, CENTER );
  paso=0;
  paso2=0;
  r=0;
  g=255;
  esc=20;
  r1=0;
  g2=0;
  b3=0;
  r4=255;
  g5=255;
  b6=255;
  grilla=45;
  rojo=255;
  verde=255;
  azul=255;
  veloc=1.3;
  noStroke();
}

void draw() {
  //grillas
  background (0);
  for (int x=0; x<60; x++) {
    fill (rojo, verde, azul);
    rect(grilla*x, 0, 22, height-100);
  }
  //pasos
  fill(r1, g2, b3);
  rect(paso, 250, 95, 40);


  fill (r4, g5, b6);
  rect(paso2, 100, 95, 40);


  //botones 
  //C=PARA COLOREAR LAS GRILLAS,+/-=PARA AGREGAR O SACAR MAS GRILLAS,V+/V-=PARA AUMENTAR O BAJAR LA VELOCIDAD DE LOS PASOS.
  fill(255, 0, 0);
  circle(25, 447, 10);
  fill(255, 0, 0);
  text("r para reiniciar", 150, 440);
  text("C", 320, 445);
  fill(255);
  circle( 320, 445, 60 );
  fill(0);
  text("C", 320, 440);
  fill(255);
  circle( 450, 445, 60 );
  fill(0);
  text("+", 450, 440);
  fill(255);
  circle( 580, 445, 60 );
  fill(0);
  text("-", 580, 440);
  fill(255);
  circle( 730, 445, 60 );
  fill(0);
  text("V+", 730, 440);
  fill(255);
  circle( 820, 445, 60 );
  fill(0);
  text("V-", 820, 440);

  if (paso<width-width/esc/2 && paso2<width-width/esc/2 && aumento) {
    paso+=veloc;
    paso2+=veloc;
  } else {
    aumento=false;
    if (paso>0+width/esc/2 && paso2>0+width/esc/2 && !aumento) {
      paso-=veloc;
      paso2-=veloc;
    } else {
      aumento=true;
    }
  }
}


void keyPressed() {
  if (key=='r')
  paso=0;
  paso2=0;
  rojo=255;
  verde=255;
  azul=255;
  grilla=45;
  veloc=1.3;
}


void mousePressed() {  
  if ( dist(mouseX, mouseY, 320, 445 ) < 30 ) {
    rojo=random(255);
    verde=random(255);
    azul=random(255);
  }
  if ( dist(mouseX, mouseY, 450, 445 ) < 30 ) {
    grilla++;
  }
  if ( dist(mouseX, mouseY, 580, 445 ) < 30 ) {
    grilla--;
  }
  if ( dist(mouseX, mouseY, 730, 440 ) < 30 ) {
    veloc++;
  }
  if ( dist(mouseX, mouseY, 820, 440 ) < 30 ) {
    if (veloc>1) {
      veloc--;
    }
  }
}
