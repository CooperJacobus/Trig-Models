float n = 6;
float approx;
float c = 16;

void setup() {
  background(255);
  size(500,800);
}

void draw() {
  background(255);
  fill(255);
  noStroke();
  ellipse(250, 250, 410, 410);
  rect(0,0,500,520);
  
  if(mouseY >= 490 && mouseY <= 510 && mouseX >= 20 && mouseX <= 480){
    n = (mouseX - 20)/c +1;
  }
  
  fill(0);
  stroke(0);
  strokeWeight(5);
  line(20,500,480,500);
  textSize(16);
  text(n,(n-1)*c+12,485);
  fill(255);
  ellipse((n-1)*c+20,500,15,15);
  
  approx = n * sqrt(pow((sin(2*PI/n)),2) + pow((1-cos(2*PI/n)), 2)) / 2;
  
  for(float i = 0; i <= n; i +=1){
    float x = 250 + 200*cos(i*2*PI/n);
    float y = 250 + 200*sin(i*2*PI/n);
    float x1 = 250 + 200*cos((i+1)*2*PI/n);
    float y1 = 250 + 200*sin((i+1)*2*PI/n);
    
    stroke(0,100,200);
    //ellipse(x,y, 5, 5);
    line(x,y,x1,y1);
  }
  
  noFill();
  stroke(0);
  strokeWeight(3);
  
  ellipse(250, 250, 400, 400);
  
  fill(0);
  textSize(16);
  text("PI =", 10, 20);
  text(approx, 40, 20);
  text("n =", 10, 40);
  text(n, 35, 40);
  
  for(float i = 1; i <= 460/c + 1; i+=0.01){
    float approxi = i * sqrt(pow((sin(2*PI/i)),2) + pow((1-cos(2*PI/i)), 2)) / 2;
    
    stroke(0,100,200);
    strokeWeight(5);
    point((i-1)*c+20, 750-200*approxi/PI);
  }
  
  stroke(0,100,200);
  fill(255);
  ellipse((n-1)*c+20, 750 - (approx/PI*200), 15, 15);
  
  strokeWeight(1);
  stroke(0,100,200);
  line(20,550,480,550);
  strokeWeight(3);
  line((n-1)*c+20, 510, (n-1)*c+20, 740-200*approx/PI);
  
  
}