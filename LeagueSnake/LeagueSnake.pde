//*
// ***** SEGMENT CLASS *****
// This class will be used to represent each part of the moving snake.
//*

class Segment {

//Add x and y member variables. They will hold the corner location of each segment of the snake.
int x; 
int y;

// Add a constructor with parameters to initialize each variable.
Segment(int x, int y){
  this.x = x;
  this.y = y;


}
}

//*
// ***** GAME VARIABLES *****
// All the game variables that will be shared by the game methods are here
//*

int direction = 0;
int foodEaten= 0;
Segment head;
int foodX;
int foodY;



//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*

void setup() {
  size(500,500);
  head = new Segment((int)random(50*10),(int)random(50*10));
  frameRate(1000);
  dropFood();
}

void dropFood() {
  //Set the food in a new random location
    foodX = ((int)random(50*10));
    foodY = ((int)random(50*10));

}



//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*

void draw() {
  background (0,0,0);
  drawFood();
  checkBoundaries();
  move();
  drawSnake();
}

void drawFood() {
  //Draw the food
  rect(foodX, foodY,10,10);
  fill(0,234,0);
}

void drawSnake() {
  rect(head.x, head.y, 10, 10);
  fill(234,0,0);
  //Draw the head of the snake followed by its tail
}


//*
// ***** TAIL MANAGEMENT METHOsDS *****
// These methods make sure the tail is the correct length.
//*

void drawTail() {
  //Draw each segment of the tail 

}

void manageTail() {
  //After drawing the tail, add a new segment at the "start" of the tail and remove the one at the "end" 
  //This produces the illusion of the snake tail moving.
  
}

void checkTailCollision() {
  //If the snake crosses its own tail, shrink the tail back to one segment
  
}



//*
// ***** CONTROL METHODS *****
// These methods are used to change what is happening to the snake
//*

void keyPressed() {
  //Set the direction of the snake according to the arrow keys pressed
  if (key == CODED) {
    print(keyCode);
    if (keyCode == UP && direction !=DOWN) {
      direction=UP;
      print("up");
      
      
    } else if (keyCode == DOWN && direction !=UP) {
      direction =DOWN ;
       print("down");
    } 
    else if (keyCode == RIGHT && direction !=LEFT) {
      direction =RIGHT;
   print("right");  
  } 
    else if (keyCode == LEFT && direction !=RIGHT) {
      direction =LEFT;
    
   print("left");} 
  }
}

void move() {
  //Change the location of the Snake head based on the direction it is moving.
        switch(direction)
      {
   case UP:
     head.y-=1;
     break;
   case DOWN:
     head.y+=1;
     break;
   case RIGHT:
     head.x+=1;
     break;
   case LEFT:
     head.x-=1;
     break;
      }
    /*
  switch(direction) {
  case UP:
    // move head up here 
    break;
  case DOWN:
    // move head down here 
    break;
  case LEFT:
   // figure it out 
    break;
  case RIGHT:
    // mystery code goes here 
    break;
  }
  */
}

void checkBoundaries() {
 //If the snake leaves the frame, make it reappear on the other side
 if (head.x>width){
   head.x=0;
 }
  if (head.x<0){
   head.x=width;
 }
  if (head.y>height){
   head.y=0;
 }
  if (head.y<0){
   head.y=height;
 }
}



void eat() {
  //When the snake eats the food, its tail should grow and more food appear
if(foodX==head.x && foodY==head.y){
 dropFood(); 
}
}
