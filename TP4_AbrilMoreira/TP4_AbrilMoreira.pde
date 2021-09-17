//Enlace al video: https://youtu.be/zjsRCdEqdKU

PImage [] introduccion = new PImage [8];
PImage [] piedra = new PImage [3];
PImage [] dracula = new PImage [4];
PImage[] egipto= new PImage [11];
PImage creditos;
PImage puertas;
PImage muerto;
PImage investigador;
int pantalla;
PFont miLetra;
boolean botonPres;


void setup() {
  size(1280, 720);
  pantalla=0;
  botonPres=false;
  imageMode (CENTER);
  miLetra= loadFont ("GillSansMT-Italic-50.vlw");
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
}

void draw() {
  background(0);
  textAlign(LEFT, CENTER);
  textFont(miLetra);
  if ( pantalla == 0 ) {
    image(creditos, 640, 360, 1280, 720);
    fill(255);
    textSize(70);

    text("[Press to start]", 700, 320);
  } 
  if ( pantalla == 1 ) {
    image(introduccion[0], 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);

    texto("Hmm...muy bien...buscando...buscando...", 30, 255, 100, 580);
  }
  if (pantalla == 2) {
    image(introduccion[1], 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto("Oh,debe ser aqui...", 30, 255, 100, 580);
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
    image(introduccion[7], 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto("Y bueno,a caballo regalado,no se le miran los dientes...", 30, 255, 100, 580);
  }
  if (pantalla == 9) {
    background(0);
    image(puertas, 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    textFont(miLetra);
    texto("Muy bien,a buscar el tesoro...nada mas ni nada menos que un diamante valuado en 1 millon de dolares,\n tu tio te dio una serie de instrucciones y la llave de salida,pero por desgracia \n olvido mencionar que puerta de su mansion conduce a Egipto,que puerta elegiras?", 25, 255, 100, 580);
    fill(255);
  }
  if (pantalla==10) {
    background(0);
    image(piedra[0], 640, 360, 1280, 720);
  }
  if (pantalla==11) {
    image(piedra[1], 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto("(Oh no,caiste en la epoca de la prehistoria,deberias tener cuidado!) \n -Ouch!Creo que me calve una piedra...Que calor hace por aca,ire en busca de agua...", 30, 255, 100, 580);
  }
  if (pantalla==12) {
    image(piedra[2], 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto("Estabas tan sediento que al llegar al estanque de agua,no te diste cuenta\n que detras habia una criatura viniendo a defender su territorio,\n tristemente te captura en segundos.", 30, 255, 100, 595);
  }
  if (pantalla==13) {
    image (muerto, 640, 360, 1280, 720);
    textAlign(CENTER, CENTER);
    texto("Has muerto,\n presiona r para volver a comenzar", 25, 0, width/2, 650);
  }
  if (pantalla ==14) {
    image(dracula[0], 640, 360, 1280, 720);
  }
  if (pantalla==15) {
    image(dracula[1], 640, 360, 1280, 720);
    textAlign(LEFT, CENTER);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto ("-...que lugar mas raro y aterrador...", 25, 255, 100, 580);
  }
  if (pantalla==16) {
    image(dracula[2], 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto ("-...que miedo este castillo,porque sera que me siento observado todo el tiempo?\n (Y si,su intuicion no le fallaba una presencia lo estaba vigilando)", 25, 255, 100, 580);
  }
  if (pantalla==17) {
    image(dracula[3], 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto ("(SI!Se trata nada mas ni nada menos que del Castillo de Dracula,quien te persigue es el!\n Intentas correr lo mas que puedes,pero claramente es un vampiro,\n logra alcanzarte y drenar toda tu sangre.", 25, 255, 100, 580);
  }
  if (pantalla==18) {
    image(egipto[0], 640, 360, 1280, 720);
  }
  if (pantalla==19) {
    image(egipto[1], 640, 360, 1280, 720); 
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto ("(Bien,seleccionaste la puerta indicada,te encuentras en Egipto!\n Tras revisar las instrucciones deberias buscar fuego,\n para explotar la pared de la piramide que contiene el famoso diamante.)\n  -Bueno a investigar,que las cosas no se hacen solas...", 25, 255, 100, 590);
  }
  if (pantalla==20) {
    image(egipto[2], 640, 360, 1280, 720); 
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto("-Mhmm...ire en esta direccion,puedo ver que sale una especie de resplandor dentro de esta cueva...", 25, 255, 100, 590);
  }
  if (pantalla==21) {
    image(egipto[3], 640, 360, 1280, 720);  
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto ("*pienso...si lo agarro rapido y salgo corriendo,quizas no me vea...*", 25, 255, 100, 590);
  }
  if (pantalla==22) {
    image(egipto[4], 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto("Investigador:OYE TU!!DEVUELVEME ESO!!\nRapido,te persigue,deberas optar por 2 caminos",25, 255, 100, 590);
    botonOpcion(color(255, 108, 197), 660, 550, 450, 50);
    botonOpcion(color(255, 108, 197), 660, 630, 450, 50);
    texto("<Camino directo,pero sin escondites.>", 25, 255, 665, 575);
    texto("<Camino largo,pero con escondites.--->", 25, 255, 665, 650);
  }
  if (pantalla==23) {
    image(investigador, 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto ("Como el camino era directo pero carecia de escondites para disuadir al investigador,\nlogro capturarte y robarte todas tus cosas.",25, 255, 100, 590);
    texto("Presiona r para volver a comenzar.",25, 255, 750, 650);
    
  }
  if (pantalla==24) {
    image(egipto[5], 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto("(Si bien el camino era largo,estaba repleto de escondites,\n asi que lograstes disuadir al investigador y explotar la pared de la piramide).\n -Uf!Al fin,pense que no salia de esa...", 25, 255, 100, 590);
  }
  if (pantalla==25) {
    image(egipto[6], 640, 360, 1280, 720); 
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto("-Wow!este lugar es enorme y con multiples caminos,sera dificil encontrar el diamante por aqui...\nHmm, quizas estos dibujos en la pared conduzcan a algun sitio...", 25, 255, 100, 590);
  }  
  if (pantalla==26) {
    image(egipto[7], 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto("Si!Efectivamente,logras visualizar el famoso diamante por el cual viniste...\nPero se encuentra custodiado por un esbirro de Anubis,deberas ser muy rapido y salir corriendo", 25, 255, 100, 590);
  }
  if (pantalla==27) {
    image(egipto[8], 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto("*No puede ser...es muy veloz...Oh!Rapido,me mimetizare con esta pared...*", 25, 255, 100, 590);
  }
  if (pantalla==28) {
    image(egipto[9], 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto("*uy...quieto...no respires...no te muevas...*",25, 255, 100, 590);
  }
  if (pantalla==29) {
    image(egipto[10], 640, 360, 1280, 720);
    recuadro (color(255, 108, 197, 140), 50, 530, 1160, 160, 40);
    texto("(SI!!Porfin logras liberarte del esbirro,corres hacia la puerta de salida y logras llevarte el diamante!.)",25, 255, 100, 590);
  }
  if (pantalla==30) {
  image(creditos, 640, 360, 1280, 720);
  textAlign(CENTER,CENTER);
  texto("CREDITOS:\nJUEGO ORIGINAL:La Plantera Rosa,\nLa persecucion mas rosa de PlayStation One.\n ILUSTRACIONES/FOTOS:CoffeeD!Games,en Youtube.\nALUMNA:Moreira Abril.\nLEGAJO:88127/2.\nTECNOLOGIA MULTIMEDIA 1.\n Presiona r para volver a inicio.",30, 255,800,400);
  }
}



void mousePressed() {  
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
  } else if (pantalla==29 && mouseX < width && mouseY < height ) {
    pantalla=30;
  }
}

void keyPressed () {
  if (key=='r'&& pantalla==13 ) {
    pantalla=9;
  } else if (key=='r'&& pantalla==23 ) {
    pantalla=9;
  } else if (key=='r'&& pantalla==30 ) {
    pantalla=0;
  }
}
