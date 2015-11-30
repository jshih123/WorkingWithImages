//some code reused from GravityBalls assignment

//declare images
PImage dan, giraffe;

//declare ball variables
float gravity = .2;
int count = 2, size = 80;
float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];
PImage[] ethan = new PImage[count];

void setup() {
  size(800, 600);

  //load images
  dan = loadImage("dan.png");
  giraffe = loadImage("giraffe.jpg");
  
  //create background
  giraffe.blend(dan, 0, 0, giraffe.width, giraffe.height, 0, 0, dan.width, dan.height, BLEND); //blend dan picture with ethan
  
  //declare ball arrays
  for (int i = 0; i < count; i++) {
    x[i] = width/2;
    y[i] = height/2;
    diam[i] = size;
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    ethan[i] = loadImage("ethan.png");
  }
}

void draw() {
  //set background as image of dan and giraffe
  background(giraffe);
  
  //code for balls
  for (int i = 0; i < count; i++) {
    
    //translate picture to x and y coordinates
    translate(x[i], y[i]); 
    scale(0.75, 0.75);
    translate(-ethan[i].width/2, -ethan[i].height/2);
    image(ethan[i], 0, 0);
    resetMatrix();
    //gravity and air resistance

    //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];

    velY[i] += gravity; //add gravity

    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);
    }
    else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]); 
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);
    }
    else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
    
    //make sure ball doesn't escape from bottom of screen
    if (y[i] >= height) {
      y[i] = height - velY[i];
      velY[i] = -abs(velY[i]);
    }  

    //apply filter based on where the ball is
    if (x[i] <= width/2 && y[i] <= height/2) {
      filter(POSTERIZE, 4);
    }
    if (x[i] <= width/2 && y[i] >= height/2) {
      filter(INVERT);
    }
    if (x[i] >= width/2 && y[i] <= height/2) {
      filter(ERODE);
    }
    if (x[i] >= width/2 && y[i] >= height/2) {
      filter(THRESHOLD);
    }

    //add velocity based on mousepress
    if (mousePressed == true){
      velX[i] += random(-5,5);
      velY[i] += random(-5,5);
    }
  }
  

    
}