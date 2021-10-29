 Particle [] emily;
  whiteParticle[] yip;
boolean mouse;
void setup(){
  size(500,500);
  background(0);
    emily = new Particle[1000];
    yip = new whiteParticle[50];
    for(int i = 0; i < emily.length; i++){
      emily[i] = new Particle();
    }
    for(int x = 0; x < yip.length; x++){
      yip[x] = new whiteParticle();
    }
}
void draw(){
  for(int i = 0; i < emily.length; i++){
  emily[i].move();
  emily[i].show();
  }
  for(int x = 0; x < yip.length; x++){
    yip[x].move();
    yip[x].show();
  }
  }
class Particle{
  int randomColor, opacity;
  double mySpeed, myAngle;
  float myX, myY;
  Particle(){
    myAngle = Math.random()*2*Math.PI;
    myX = 250;
    myY = 240;
    mySpeed = 8.23;
    opacity = (int)(Math.random()*60)+60;
    int i = (int)(Math.random()*3);
    if(i == 0){
    randomColor = color(255, 192, 203);
    }
    else if(i == 1){
    randomColor = color(18, 105, 199);
    }
    else{
    randomColor = color(156, 81, 182);
    }
  }
  void move(){
    myX = myX+ (float)(Math.cos(myAngle*mySpeed));
    myY = myY + (float)(Math.sin(myAngle*mySpeed));
  }
  void show(){
    int randomSize = (int)(Math.random()*50);
    noStroke();
    fill(randomColor, opacity);
    if(mousePressed == true){
      myX = 250;
      myY = 250;
    }
    ellipse(myX, myY, randomSize, randomSize);
  }
}
class whiteParticle extends Particle{
  whiteParticle(){
    randomColor = color(255);
    fill(randomColor, opacity);
  }
}
void mousePressed(){
 mouse = true;
}
