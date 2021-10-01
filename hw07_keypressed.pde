int x;
int y;
int radius;

int yspeed;
int xspeed;
int speed; //I don't want to constantly change the numbers in keyPressed so this variable came to be. 

void setup() {
  background(50, 67, 248);
  size(1000, 1000);
  //Initialization of variables
  x = 500;
  y = 500;
  radius = 20;

  xspeed = 0;
  yspeed = 0;
  speed = 27; //This number is a nice speed for a small circle. You will have to manually change the speed depending on the size of the circle, I haven't found a specific formula or anything for a good speed.
}

void draw() {
  if (y < height/3 + 1) {
    background(#53ED07);
  } else if (y>height/3 + 1 && y< (2*height)/3 + 1) {
    background(#F07EE8);
  } else if (y >(2*height)/3 + 1 && y< height + 1) {
    background(#21E7FF);
  }
  if (y < height/3 + 1) { //The top 1/3
    fill(255, 0, 0);
  }//red circle bracket
  else if (y>height/3 + 1 && y< (2*height)/3 + 1) { //The middle 1/3.
    fill(0, 255, 0);
  }//green circle bracket
  else if (y >(2*height)/3 + 1 && y< height + 1) {//The lower 1/3.
    fill(0, 0, 255);
  }//blue circle bracket
  circle(x, y, radius * 2);
  y += yspeed;
  x += xspeed;
}//draw bracket

void keyPressed() {
  println(key);
  if (key == 'w') {
    yspeed = -speed; // Moves up
  }//w bracket
  if (key == 's') {
    yspeed = speed; //Moves down
  }//s bracket
  if (key == 'a') {
    xspeed = -speed; //Moves left
  }//a bracket  
  if (key == 'd') {
    xspeed = speed; //Moves right
  }
}

/* Colorful mode 
 Circle and background color changes depends on position of circle
 Insert in place of the background command in draw:
 
 if (y < height/3 + 1) {
 background(#53ED07);
 }
 else if (y>height/3 + 1 && y< (2*height)/3 + 1) {
 background(#F07EE8);
 }
 else if (y >(2*height)/3 + 1 && y< height + 1) {
 background(#21E7FF);
 }
 Insert in between the circle command in draw and the y+= yspeed command.
 
 if (y < height/3 + 1) { //The top 1/3
 fill(255, 0, 0);
 circle(x, y, radius*2);
 }//red circle bracket
 else if (y>height/3 + 1 && y< (2*height)/3 + 1) { //The middle 1/3.
 fill(0, 255, 0);
 circle(x, y, radius*2);
 }//green circle bracket
 else if (y >(2*height)/3 + 1 && y< height + 1) {//The lower 1/3.
 fill(0, 0, 255);
 circle(x, y, radius*2);
 }//blue circle bracket
 }
 
 
 */
