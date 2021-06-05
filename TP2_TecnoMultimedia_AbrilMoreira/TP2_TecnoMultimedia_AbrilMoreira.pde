PImage intro,cigarro,disco,smoke;
PFont miLetra;
float posx1,posx2,posx3,posx4,posy1,posy2,tamtexto1,tamtexto2;
int y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,segs;



void setup(){
size(1200,600);
imageMode (CENTER);
textAlign(CENTER,CENTER);
miLetra=loadFont("FelixTitlingMT-100.vlw");
intro=loadImage("intro.png");
smoke=loadImage("smoke.png");
cigarro=loadImage("cigarro.png");
disco=loadImage("disco.png");
posx1=400;
posx2=500;
posx3=700;
posx4=750;
posy1=230;
posy2=200;
y1=200;
y2=230;
y3=260;
y4=290;
y5=320;
y6=352;
y7=380;
y8=350;
y9=380;
y10=410;
y11=440;
y12=470;
tamtexto1=80;
tamtexto2=120;


}
void draw (){
background (0);
image(intro,600,300,1200,600);
fill(255);
textFont(miLetra);
textSize (30);
text("Una produccion de",posx1,250);
posx1-=1;
textSize(45);
fill(255,0,0);
text("NETFLIX",posx2,300);
posx2+=0.5;
  if(posx2>550){
    image(cigarro,600,300,1200,600);
    textSize(35);
    fill(255);
    text("Blanca",posx3,300);
    text("Suarez",posx4,330);
    posx3-=1;
    posx4+=1;
  if(posx4>780){
    image(disco,600,300,1200,600);
    textSize(30);
    fill(255);
    text("Yon",285,posy1);
    text("Gonzalez",330,posy2);
    posy1-=1;
    posy2+=1;
  if(posy2>240){
  image(smoke,600,300,1200,600);
  textSize(35);
  text("M",850,y1);
  text("a",850,y2);
  text("r",850,y3);
  text("t",850,y4);
  text("i",850,y5);
  text("ñ",850,y6);
  text("o",850,y7);
  text("R",900,y8);
  text("i",900,y9);
  text("v",900,y10);
  text("a",900,y11);
  text("s",900,y12);
  y1+=1;
  y2+=1;
  y3+=1;
  y4+=1;
  y5+=1;
  y6+=1;
  y7+=1;
  y8-=1;
  y9-=1;
  y10-=1;
  y11-=1;
  y12-=1;
 if(y1>240){
  fill(0);
  rect (0,0,1200,600);
  textSize(tamtexto1);
  fill(255);
  text("Las",540,170);
  text("del",520,320);
  textSize(tamtexto2);
  text("CHICAS",600,250);
  text("CABLE",750,340);
  tamtexto1-=0.5;
  tamtexto2-=0.5;
 if (tamtexto2<97){
   fill(0);
   rect(0,0,1200,600);
fill(255);
textSize(20);
text("coordinador de direccion",600,200);
text("jefe de producion",600,300);
text("musica original",600,400);
textSize(25);
text("ALBERTO TERRON",600,220);
text("KEVIN JIMENEZ",600,320);
text("JULIO DE LA ROSA",600,420);



   if (frameCount%60==0) {
segs ++;
}
fill(0);
text(segs, width/2, height/2);
    if(segs>0.5){
     rect(0,0,1200,600);
     fill(255);
     textSize(20);
     text("montaje",600,200);
     text("sonido",600,300);
     text("direccion de produccion",600,400);
     textSize(25);
     text("JULIA JUANATEY",600,220);
     text("QUIM RUBI",600,320);
     text("PEPE RIPOLL",600,420);
     text("SARA GONZALO",600,440);
     
    if(segs>1){
      fill(0);
    rect(0,0,1200,600);
    }
}
}
   
}
} 
}
}
}
