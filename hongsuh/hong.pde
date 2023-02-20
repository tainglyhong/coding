class hong {
  void dot() {
    fill(0);
    circle(a-100, b-100, 20);
  }
  hong() {
    a = width/2;
    b = random(0, height);
  };
  hong(float p, float q, int c) {
    a = p;
    b=q;
    cc =c;
    va = random(-3, 3);
    vb = random(-2, 2);
  }
  float a, b, va, vb;
  int cc;
  void move() {
    a += va;
    b += vb;
    if (a<0 || a>width) va = -va;
    if (b<0 || b>height) vb = -vb;
  }
  void fred() {//among us
    //box
    {
      stroke(255);
      strokeWeight(5);
      fill(0);
      if (cc == 1) fill(255, 255, 0);
      else if (cc == 2) fill(0);
      else if (cc == 3) fill (0, 98, 25);
      else fill (0, 0, 255);
    }
    rect(a-150, b-160, 150, 150, 18);
    //leg
    rect(a-65, b, 60, 100, 38);
    rect(a, b, 60, 100, 38);

    //face
    ellipse(a, b-100, 200, 300);
    fill(173, 216, 230);
    ellipse(a+50, b-150, 120, 60);
    fill(135, 206, 235);
    ellipse(a+70, b-160, 50, 10);
  }
}
