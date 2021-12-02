//tp final
//jair gonzalez
//link al video

Aventura aventura;

void setup() {
  size(600, 600);
  aventura = new Aventura();
}
void draw() {
  aventura.menu();
}
void mousePressed() {
  aventura.click();
}
void keyPressed() {
  aventura.teclapresionada2();
}
void keyReleased() {
  aventura.teclasoltada2();
}
