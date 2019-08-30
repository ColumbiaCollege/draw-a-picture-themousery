// Intro to Programming
// Draw a picture assignment
// Matthew Francis 8/29/2019


// set predefined colors 
color orange = #F0A202;
color brown = #2C4251;
color white = #F5F7DC;
color black = #16161D;
color green = #5A7D7C;

// declare i up here because java is stupid
int i;

// set up the canvas
void setup(){
  size(800,600);
}

// main loop
void draw(){
  // make it not loop and turn stroke off
  noLoop();
  noStroke();
  
  // setup the background
  background(black);
  
  //draw a bunch of random stars
  stroke(white);
  for(i=0;i<200;i++){
    // set the size kind of random
    strokeWeight(random(1,3));
    // get a random x and y and put a dot there
    float x = random(width);
    float y = random(400);
    point(x,y);
  }
  noStroke();
  
  // draw a moon
  fill(white);
  // main moon 
  ellipse(600,100,100,100);
  fill(black);
  // cover part of it so it looks like a real moon
  ellipse(550,100,100,100);
  
  // draw some hills
  fill(green);
  ellipse(200,height,800,600);
  ellipse(600,height-100,800,500);
  
  // draw a house or cabin or something
  fill(brown);
  // main body
  rect(100,400,200,150);
  // roof
  triangle(75,400, 200,325, 325,400);
  // door
  fill(orange);
  rect(150,450,50,100);
}
