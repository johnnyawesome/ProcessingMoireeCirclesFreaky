int circleX;
int circleY;
boolean schalter = true;

int diameterX = 7;
int diameterY = 700;
int diff = 5;

void setup(){
  
  size(1000,1000);  
  
  circleX = width / 2;
  circleY = height / 2;
}

void draw(){
  
  if (diff < 20 && schalter == true){  
    
    background(0);
    drawCircles(circleX - width / 4,circleY,diameterX,diameterY,diff); 
    drawCircles(circleX + width / 4,circleY,diameterX,diameterY,diff);

    diff++;
    if(diff == 20) schalter = false;
    
    
  }
  
  if (schalter == false){  
    
    background(0);
    drawCircles(circleX - width / 4,circleY,diameterX,diameterY,diff); 
    drawCircles(circleX + width / 4,circleY,diameterX,diameterY,diff);
    diff--;
    if(diff == 1) schalter = true;
    
  }
  
  
  //ellipse(width / 2,height / 2,80,80);
  
}


void drawCircles(int posX, int posY, int diamX, int diamY, int differ){
  
  if(diamX < 1500){

    stroke(255);
    strokeWeight(1);
    noFill();
    ellipse(posX,posY,diamX,diamY);
    
    diamX += differ;
    diamY += differ;
    drawCircles(posX,posY,diamX,diamY, diff);
 
  }
}