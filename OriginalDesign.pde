int carX = 50;
int carY = 280;

void setup()
{
  size(400, 300);
}

void draw()
{
	carX = carX + 1;
	sky();
	sun();
	ground();
	house();
	car();
	if (carX > 450)
	{
		carX = -100;
	}
}

void sky()
{
	background(180, 200, 255);
	fill(250, 230, 180);
}

void ground()
{
	noStroke();
	fill(130, 255, 135);
	rect(0, 260, 400, 40);
	fill(150);
	rect(0, 270, 400, 30);
}

void house()
{
	noStroke();
	fill(255, 80, 80);
	rect(175, 210, 50, 50);
	fill(255, 127, 80);
	triangle(200, 175, 160, 210, 240, 210);
	fill(200);
	rect(180, 215, 15, 15);
	rect(205, 215, 15, 15);
}

void sun()
{
	fill(255, 255, 0);
	ellipse(mouseX, mouseY, 40, 40);
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
