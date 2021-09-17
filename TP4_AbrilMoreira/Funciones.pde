void botonOpcion (color col, int posX, int posY,int tamX, int tamY) {
  fill(col);
  rect(posX, posY, tamX, tamY);
 
}

void texto( String txt, int t, color c, float x, float y ){
  pushStyle();
  textSize(t);
  fill(c);
  text( txt, x, y );
  popStyle();
}

void recuadro (color col,int posx,int posy,int tamx,int tamy,int op){
  fill(col);
  noStroke();
  rect(posx,posy,tamx,tamy,op);
}
