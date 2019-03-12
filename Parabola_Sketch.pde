float n = 16;
float theta = PI/4;

void setup(){
 size(500,500);
 background(255);
}

void draw(){
  background(255);
  
  float c = 250 + (400*sin(theta)/2);
  //theta = tan(mouseY/mouseX);
  
  strokeWeight(5);
  stroke(0);
  
  
  for(float i = 0; i <= n; i += 1){
    float d = i * (400/n);
    
    stroke(0,100,200);
    line(50+d,450,50+(400-d)*cos(theta),450-(400-d)*sin(theta));
    
    noFill();
    stroke(0);
    ellipse(50+d,450,5,5);
    ellipse(50+d*cos(theta),450-d*sin(theta),5,5);
    
  }
  
  line(50,450,450,450);
  line(50,450,50+400*cos(theta),450-400*sin(theta));
  
  

  
  
}