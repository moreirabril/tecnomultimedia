//Ilusion optica de los pasos

//Video:https://youtu.be/3bygE_2UkQA

int pantalla,esc;
float r,g,paso,paso2;
boolean aumento=true;


void setup() {
  size( 1000, 500 );
  textSize( 32 );
  textAlign( CENTER, CENTER );
  pantalla = 0; 
  paso=0;
  paso2=0;
  r=0;
  g=255;
  esc=20;
  noStroke();
}

void draw() {
  if ( pantalla == 0 ) {
    r= map(mouseX,0,1000,255,0);
    g= map(mouseX,0,1000,0,255);
    background(r,g,120);
    fill( 0 );
    text( "Click en el boton :) ", width/2, height/2);
    circle( width/2, height/4*3, 100 );


 } else if ( pantalla == 1 ) { 
    background (0);
  for (int x=0; x<60; x++) {
    fill (255);
    rect(45*x, 0, 22,height-50);
  }

  fill(0);
  rect(paso, 250, 95, 40);


  fill (255);
  rect(paso2, 100, 95, 40);
  
  fill(255,0,0);
  circle(25,480,10);
  fill(255,0,0);
  text("r para reiniciar",150,472,20);
  
if (paso<width-width/esc/2 && paso2<width-width/esc/2 && aumento) {
    paso+=1.3;
    paso2+=1.3;
  } else {
    aumento=false;
    if (paso>0+width/esc/2 && paso2>0+width/esc/2 && !aumento) {
      paso-=1.3;
      paso2-=1.3;
    } else {
      aumento=true;
    }
  }
}
}

void keyPressed(){
if (key=='r')
pantalla=0;
paso=0;
paso2=0;

}


void mousePressed() {  
   if(pantalla==0){
   if ( dist(mouseX, mouseY, width/2, height/4*3 ) < 50 ){
     background(200);
     pantalla=1;
     
     }
   }
}
