void setup() {
  size(1000, 1000);

  modernArt();
}//setup bracket

void modernArt() {
  int counter, randR, randG, randB, randX, randY, randX1, randY1, limit, opacity; 
  counter = 0;
  limit = 100;
  while (counter < limit) {
    randR = int(random(0, 255));
    randG = int(random(0, 255));
    randB = int(random(0, 255));
    opacity = int(random(0, 255));
    randX = int(random(0, 1000));
    randX1 = int(random(0, 500));
    randY = int(random(0, 500));
    randY1 = int(random(0, 500));
    fill( randR, randG, randB, opacity);
    rect(randX, randY, randX1, randY1);
    counter++;
  }
}//modernArt bracket

/*
*/
