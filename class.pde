class hong{
  hong() {  };
  hong(float p, float q){
  a = p;   b=q;
  va = random(-3,3);
  vb = random(-2,2);
  }
  float a,b,va,vb;
  void move(){
  a += va;
  b += vb;
  if(a<0 || a>width) va = -va;
  if(b<0 || b>height) vb = -vb;
  }
  void fred() {//among us
  //box
  {
    stroke(255);
    strokeWeight(5);
    fill(0);
  }
  rect(a-150, b-160, 150, 150, 18);
  //leg
  rect(a-65, b, 60, 100, 38);
  rect(a, b, 60, 100, 38);

  //face
  fill(0);
  ellipse(a, b-100, 200, 300);
  fill(173, 216, 230);
  ellipse(a+50, b-150, 120, 60);
  fill(135, 206, 235);
  ellipse(a+70, b-160, 50, 10);
  }
}
