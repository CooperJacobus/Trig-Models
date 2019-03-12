int n = 9;
float r = 200;
float r1 = 1;
float r2;
float rr1;
float rr2;
void setup() {
  size(500,500);
  background(255);
  
}

void draw() {
  background(255);
  
  if(mouseX >=20){
    if(mouseX <=480){
      n= (mouseX-20)/5;
    }
  }
  
  r2 = r1+(r1/(sin((2*PI)/(2*n))));
  rr1= (r*r1)/r2;
  textSize(16);
  fill(0);
  
  text("n =",10,20);
  text(n,40,20);
  text("r1 =",10,40);
  text(r1,40,40);
  text("r2 =",10,60);
  text(r2,40,60);
  //text(n,n*5 +17,465);
  text("r2 = r1+(r1/(sin((2*PI)/(2*n))))", 130,20);
  
  stroke(0);
  strokeWeight(5);
  fill(255);
  ellipse(250,250,2*r,2*r);
  
  for (int i = 1; i <= n/2 ; i++){
    stroke(0,100,200);
    ellipse(250-(-r+rr1)*cos(i*(2*PI)/(1*n)),250-(-r+rr1)*sin(i*(2*PI)/(1*n)),2*rr1,2*rr1);
    
    ellipse(250-(-r+rr1)*cos(i*(2*PI)/(1*n)),250+(-r+rr1)*sin(i*(2*PI)/(1*n)),2*rr1,2*rr1);
  }
  
  stroke(0);
  ellipse(250+r-rr1,250,2*rr1,2*rr1);
  line(250+r-rr1,250,250,250);
  line(20,480,480,480);
  ellipse(n*5 +20,480,15,15);
  
  line(250-(-r)*cos(1*(2*PI)/(2*n)),250+(-r)*sin(1*(2*PI)/(2*n)),250,250);
  //line(250+r-rr1-(rr1*cos(PI-(2*PI)/(2*n))),250,0,0);
  
  textSize(16);
  fill(0);
  
  text("n =",10,20);
  text(n,40,20);
  text("r1 =",10,40);
  text(r1,40,40);
  text("r2 =",10,60);
  text(r2,40,60);
  text(n,50,465);
  text("n =",20,465);
  text("r2 = r1+(r1/(sin((2*PI)/(2*n))))", 130,20);
  

  
  
  
}