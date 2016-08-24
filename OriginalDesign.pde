int carX = 50;
int carY = 280;
float sunY = 0;
float g = 230;
float r = 180;
void setup()
{
  size(400, 300);
}

void draw()
{
	carX = carX + 1;
	sunY = sunY + 0.5;
	g = g - 0.3;
	r = r / 1.05;
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
		g = 230;
		r = 180;
	}
}

void sky()
{
	background(r, g, 255);

}

void ground()
{
	noStroke();
	fill(130, 255, 135);
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
	fill(100, 200, 100);
	rect(100, 150, 10, 120);
}