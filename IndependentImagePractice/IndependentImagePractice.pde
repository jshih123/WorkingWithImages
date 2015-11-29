PImage dan, ethan, giraffe;
int mouse = 0;

void setup(){
  size(800,600);
  
  //load images
  dan = loadImage("dan.png");
  ethan = loadImage("ethan.png");
  giraffe = loadImage("giraffe.jpg");
  giraffe.blend(dan,0,0,giraffe.width, giraffe.height, 0, 0, dan.width, dan.height, BLEND); //blend dan picture with ethan
}

void draw(){
  background(giraffe); //set background as image of dan and giraffe

}

void keyPressed(){