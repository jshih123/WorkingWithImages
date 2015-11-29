//some code reused from GravityBalls assignment

float gravity = .45, airResistance = 0.99;
int count = 30, size = 80;
PImage dan, giraffe;
float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];
PImage[] ethan = new PImage[count];

void setup(){
  size(800,600);
  
  //load images
  dan = loadImage("dan.png");
  for (int i = 0; i < count; i++){
    x[i] = width/2;
    y[i] = height/2;
    diam[i] = size;
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    ethan[i] = loadImage("ethan.png");
  }
  giraffe = loadImage("giraffe.jpg");
  giraffe.blend(dan,0,0,giraffe.width, giraffe.height, 0, 0, dan.width, dan.height, BLEND); //blend dan picture with ethan
    
}

void draw(){
  background(giraffe); //set background as image of dan and giraffe
  

  for (int i = 0; i < count; i++){
    
    translate(x[i], y[i]); //translate picture to x and y coordinates
    scale(0.75, 0.75);
    translate(-ethan[i].width/2, -ethan[i].height/2);
    image(ethan[i], 0, 0);
    resetMatrix();
 
    //gravity and air resistance
  
    //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];
    
    velY[i] += gravity; //add gravity
    velY[i] *= airResistance; //make sure the ball doesn't get higher than starting point
   
    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
   //make sure ball doesn't escape from bottom of screen
    if (y[i] >= height) {
      y[i] = height - velY[i];
      velY[i] = -abs(velY[i]);
    }  

  //apply filter based on where the ball is
    if (
  }
}