int carX = 50;
int carY = 280;
float sunY = 0;
float skyG = 230;
float skyR = 190;
int lampG = 210;
int lampR = 210;
int lampB = 210;
void setup()
{
  size(400, 300);
}

void draw()
{
	carX = carX + 1;
	sunY = sunY + 0.5;
	skyG = skyG - 0.3;
	skyR = skyR / 1.005;
	sky();
	sun();
	mountains();
	ground();
	lamp();
	car();
	if (carX > 450)
	{
		carX = -100;
	}

	if (sunY > 300)
	{
		sunY = -50;
		skyG = 230;
		skyR = 180;
	}
}

void mousePressed(){
	redraw();
 lampG = 230;
 lampR = 240;
 lampB = 50;

}

void sky()
{
	background(skyR, skyG, 255);
}

void ground()
{
	noStroke();
	fill(120, 245, 125);
	rect(0, 260, 400, 40);
	fill(150);
	rect(0, 270, 400, 30);
}


void mountains()
{
	fill(100, 230, 100);
	ellipse(50, 300, 400, 300);
	fill(100, 240, 100);
	ellipse(300, 300, 400, 300);
}

void sun()
{
	fill(255, 255, 0);
	ellipse(175, sunY, 40, 40);
}

void car()
{
	fill(170);
	ellipse(carX + 1, carY, 20, 20);
	ellipse(carX + 39, carY, 20, 20);
	fill(230);
	rect(carX, carY - 35, 40, 20);
	fill(0, 0, 255);
	rect(carX - 10, carY - 20, 60, 20);
}

void lamp()
{
	fill(lampR, lampG, lampB);
	ellipse(105, 140, 25, 30);
	ellipse(275, 140, 25, 30);	
	fill(100, 200, 100);
	rect(100, 155, 10, 115);
	rect(270, 155, 10, 115);
	ellipse(105, 120, 10, 10);
	ellipse(275, 120, 10, 10);
}