Player player;

void setup (){
  size(600, 400);
  player = new Player(300, 200);
  rectMode(CENTER);
}


void draw (){
  background (150);
  player.Playerbewegung();
  player.Playerdisplay();
}
void keyPressed (){
   player.tastegedrückt(key);
}
void keyReleased (){
   player.tastelosgelassen(key);
}
