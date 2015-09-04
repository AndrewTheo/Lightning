int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;


void setup()
{
  size(500,300);
  strokeWeight(2);
  background(0,0,0);  
}
void draw()
{  
  cloud();
  startX = (int)(Math.random()*400+50);
  while(endY < 300)
  {
    endY = startY + ((int)(Math.random()*10));
    endX = startX + ((int)(Math.random()*18-9));
    stroke(255,255,0);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  ground();
}

void mousePressed()
{
  background(0,0,0);
  startX = (int)(Math.random()*400+50);
  startY = 0;
  endX = 0;
  endY = 150;
}

void cloud()
{
  
  fill(135, 130, 130);
    noStroke();
    ellipse(24,21,125,59);
    ellipse(114,21,125,59);
    ellipse(201,21,125,59);
    ellipse(289,21,125,59);
    ellipse(359,21,125,59);
    ellipse(429 ,21,125,59);
    ellipse(455,21,125,59);
}

void ground()
{
  noStroke();
  fill(87,65,47);
  rect(0,250,550,400);
}
