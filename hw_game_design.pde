Siha a, b, c, A , B;
void setup() {
  size(1000, 500);
  a = new Siha(100, 100, 100,1);
  b = new Siha(250, 150, 150,2);
  c = new Siha(400, 200, 200,3);
  A = new Siha(550, 250, 250,4);
  B = new Siha();
  a.Life();   b.Life();   c.Life();  A.Life();  B.Life();
  a.rednose();  b.rednose();  c.rednose();  A.rednose();  B.rednose();
}
class Siha {
  void rednose(){
    fill(255,0,0);
    circle(x,y,d/10);
  }
  
  Siha(float p, float q, float r,int c) {
    x = p;      y = q;     d = r;
    cc = c;
  }
  Siha(){
    x = width/2;
    y = random(0,height);
    d = 150;
  };
  float x, y, d;
  int cc;
  void Life() {
    if (cc == 1) fill(255,255,0);
    else if (cc == 2) fill(255);
    else if (cc == 3) fill (0,255,255);
    else if (cc == 4) fill (255,0,0);
    else fill (0,0,255);
    ellipse(x, y, d, d/3*2);
    circle(x-d/5, y-d/6, d/5);
    arc(x+d/5, y-d/6, d/5, d/5, PI, 2*PI);
    arc(x, y, d*2/3, d/5, 0, PI);
  }
}
