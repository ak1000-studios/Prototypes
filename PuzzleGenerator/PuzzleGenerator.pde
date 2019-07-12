
Helper helper = new Helper(6);

float clr = 60;

boolean flashing = false;

int counter = 6;

void setup(){
    size(800,800);
    smooth(8);
}

void draw(){
  if(flashing){
    helper.newPuzzle();
    flashing = false;
  }
  background(200);
  helper.displayPuzzle();
}



void mouseClicked(){
  flashing = true;
}
