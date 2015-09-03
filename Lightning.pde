int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

float x = 25;

int test;



void setup()
{
  size(500,300);
  strokeWeight(2);
  background(0,0,0);  
}
void draw()
{	
	//background(0,0,0);
	cloud();
	startX = (int)((x)+Math.random()*30-15);
	while(endY < 300)
	{
		endY = startY + ((int)(Math.random()*10));
		endX = startX + ((int)(Math.random()*18-9));
		//stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		stroke(255);
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
	if (test == 0)
	{
		x = x -.5;
	}
	else if (test == 1)
	{
		x = x + .5;
	}
}

void mousePressed()
{
  background(0,0,0);
  startX = (int)(Math.random()*200+50);
  startY = 0;
  endX = 0;
  endY = 150;
}

void cloud()
{
	ellipse(x,5,100,20);
	if (x == 450)
	{	
		test = 0;
	}
	if (x == 25)
	{
		test = 1;
	}
}
