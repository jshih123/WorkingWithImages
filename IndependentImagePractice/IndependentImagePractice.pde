PImage dan, ethan, giraffe;

void setup(){
  size(800,600);
  
  //load images
  dan = loadImage("dan.png");
  ethan = loadImage("ethan.png");
  giraffe = loadImage("giraffe.jpg");
giraffe.blend(dan,0,0,giraffe.width, giraffe.height, 0, 0, dan.width, dan.height, BLEND);
}

void draw(){
background(giraffe);
}