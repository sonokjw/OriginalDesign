void setup()
{
  size(200, 200);
}
void draw()
{
  body();
  ears();
  feet();
  face();
}

void body()
{
	noStroke();
	fill(87, 60, 12);
	rect(75, 75, 100, 100, 40);
	fill(201, 136, 6);
	rect(85, 90, 80, 80, 40);
}

void ears()
{
	noStroke();
	fill(87, 60, 12);
	triangle(80, 95, 105, 80, 75, 70);
	triangle(170, 95, 150, 80, 175, 70);
}

void feet()
{
	fill(230, 179, 28);
	ellipse(100, 175, 9, 11);
	ellipse(107, 175, 11, 15);
	ellipse(114, 175, 9, 13);

	ellipse(135, 175, 9, 13);
	ellipse(142, 175, 11, 15);
	ellipse(149, 175, 9, 11);
}

void face()
{
	//EYES
	fill(255, 255, 255); 
	ellipse(102, 115, 45, 45);
	ellipse(148, 115, 45, 45);
	fill(0);
	ellipse(105, 115, 15, 15);
	ellipse(145, 115, 15, 15);
	fill(255, 255, 255);
	ellipse(107, 115, 5, 5);
	ellipse(143, 115, 5, 5);
	//beak
	fill(245, 207, 14);
	triangle(118, 135, 132, 135, 125, 130);
	triangle(118, 135, 132, 135, 125, 145);
	//fur
	stroke(102, 60, 24);
	noFill();
	for (int x = 0; x = 100; x<150; x+=7){
	    arc(x, 150, 5, 7, 0, 180);
	}
	for (int i = 110; i<150; i+=7){
	    arc(i, 160, 5, 7, 0, 180);
	}
}
