void setup()
{
  size(400, 300);
}

void draw()
{
	sky();
	sun();
	ground();
	house();
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
}

void house()
{
	noStroke();
	fill(255, 80, 80);
	rect(175, 210, 50, 50);
	fill(255, 127, 80);
	triangle(200, 175, 160, 210, 240, 210);
}

void sun()
{
	fill(255, 255, 0);
	ellipse(mouseX, mouseY, 40, 40);
}
