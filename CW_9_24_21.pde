/*
1.What processing functions are needed for this program?
We need the random, fill, rect, and size functions. 
2.What processing control structures are needed?
A while loop control structure is needed.
3.Come up with an initial plan on how to make this program.
We need to create a separate function that can make a rectangle with a random color, opacity, and location. In the setup function, we need to have the while loop run the other function a certain amount of times. 
*/

void setup() {
  size(1000, 1000);
  
  int counter = 0;
  int limit = 100;
  
  while (counter < limit) {
    modernArt();
    counter++;
  }//while loop bracket
}//setup bracket

int randNum(int minimum, int maximum) { 
  return int(random(minimum,maximum)); //After writing modern art, I decided that I didn't want to constantly see int(random(0,255));, so I made this function which gives a random number given a minimum and maximum.
}

void modernArt() {
  int randR, randG, randB, randX, randY, randX1, randY1, opacity; //made a list of variables that we need only on one line to make it concise. rand is short for random.
  int colorLimit = 255; //I made these variables afterwards so that it's easier to control what color and what size the shapes will be. 
  randR = randNum(0, colorLimit);  
  randG = randNum(0, colorLimit);
  randB = randNum(0, colorLimit);
  opacity = randNum(0,colorLimit);
  
  int sizeLimit = 500; ////I made these variables afterwards so that it's easier to control what color and what size the shapes will be. Since they aren't part of the fill or rect functions, I decided to make them their own separate variables. 
  randX = randNum(0, sizeLimit * 2);
  randX1 = randNum(0, sizeLimit);
  randY = randNum(0, sizeLimit * 2);
  randY1 = randNum(0, sizeLimit);
  
  fill( randR, randG, randB, opacity);
  rect(randX, randY, randX1, randY1);
}//modernArt bracket


