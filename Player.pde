class Player {
  float x, y;
  float speed = 2.5;
  int leben = 5;
  boolean links, rechts, oben, unten;

  
  Player (float startX, float startY){
    x = startX;
    y = startY;
  }
  
  void Playerbewegung() {
    PVector d = new PVector (0, 0);
    if (links) d.x -= 1;
    if (rechts) d.x += 1;
    if (oben) d.y -= 1;
    if (unten) d.y += 1;
    
    d.normalize();
    d.mult(speed);
    
    x += d.x;
    y += d.y;
    x = constrain(x, 15, width - 15);
    y = constrain(y, 15, height - 15);
  }
  void tastegedrückt(char k){
    if (k == 'a') links = true;
    if (k == 'd') rechts = true;
    if (k == 'w') oben = true;
    if (k == 's') unten = true;
  }
  void tastelosgelassen(char k){
    if (k == 'a') links = false;
    if (k == 'd') rechts = false;
    if (k == 'w') oben = false;
    if (k == 's') unten = false;
  }
  
  void Playerdisplay(){
    rect (x, y, 30, 30);
  }
}
