float a = 10;
float b = 10;
float time = 0;

void setup() {
  size(500,500);
  background(255);
  
}

void draw() {
  float r = b/a;
  float scale = 200/(a+2*b);
  
  background(255);
  
  textSize(14);
  fill(0);
  text("ratio =", 20,20);
  text(b, 70,20);
  
  for(float i = 0; i <= time; i += PI/512){
    stroke(0,100,200);
    fill(0,100,200);
    ellipse(250+ (a+b)*scale*cos(-i)-b*scale*cos((a+b)/b*i), 250+ (a+b)*scale*sin(-i)+b*scale*sin((a+b)/b*i),2,2);
  }
  
  if(mousePressed == false){
    time = time + PI/64;
    noFill();
    stroke(0);
    strokeWeight(3);
  
    ellipse(250,250,20*scale,20*scale);
    ellipse(250 + scale*(a+b)*cos(-time), 250+ scale*(a+b)*sin(-time), r*20*scale, r*20*scale);
  
    fill(255);
    ellipse(250+ (a+b)*scale*cos(-time)-b*scale*cos((a+b)/b*time), 250+ (a+b)*scale*sin(-time)+b*scale*sin((a+b)/b*time),10,10);
 
  }
  
}