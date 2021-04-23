void setup() { 

size( 400, 400 ); 
background (255);

}

void draw() { 
  noStroke();
//triangulos colores terciarios
  //rojo-magenta
fill(255,0,128);
triangle (130,132,120,70,185,100); 
//azul-magenta
fill(128,0,255);
triangle (100,230,40,200,100,170);
//azul-cian
fill(0,128,255);
triangle (120,316,130,260,180,290);
//verde-cian
fill(0,255,128);
triangle(225,295,280,245,280,315);
//verde-amarillo
fill(128,255,0);
triangle(353,195,300,225,300,170);
//rojo-amarillo
fill(255,128,0);
triangle(220,103,290,140,280,75);
//triangulos colores primarios
//rojo
fill (255,0,0);
triangle (200,50,155,120,247,120);
//azul
fill(0,0,255);
triangle (100,200,50,270,150,270);
//verde
fill (0,255,0);
triangle (300,200,250,270,350,270);
//triangulos colores secundarios
//magenta
fill(255,0,255);
triangle (100,200,50,120,152,120);
//amarillo
fill (255,255,0);
triangle (300,200,350,120,250,120);
//cian
fill(0,255,255);
triangle (150,270,250,270,200,350);
//triangulo grande
strokeWeight(2);
stroke(0);
line (50,270,200,50);
line (200,50,350,270);
line (350,270,50,270);
//union 
stroke(0);
line(200,200,121,230);
line(200,200,200,120);
line(200,200,276,230);
}
