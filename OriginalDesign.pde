int bodyx = 155;
int bodyy = 90;

void setup()
{
  size(500, 500);
  background(20, 30, 71);

}
void draw()
{
	tree();
	body();
	ears();
	feet();
	face();
}

void tree()
{
	noStroke();
	fill(71, 39, 4);
	rect(20, -10, 60, 550);
	triangle(80, 210, 80, 190, 320, 180);
	//leaves
	fill(31, 168, 24);
	arc(321, 185, 20, 15, 1.2*PI, 2.17*PI);
	fill(8, 112, 11);
	arc(315, 192, 15, 25, 1.3*PI, 2.2*PI);
}

void body()
{
	noStroke();
	fill(87, 60, 12);
	rect(bodyx, bodyy, 100, 100, 45);
	fill(201, 136, 6);
	rect(bodyx+10, bodyy+15, 80, 80, 55);
}

void ears()
{
	noStroke();
	fill(87, 60, 12);
	triangle(bodyx+5, bodyy+20, bodyx+30, bodyy+5, bodyx, bodyy-5);
	triangle(bodyx+95, bodyy+20, bodyx+75, bodyy+5, bodyx+100, bodyy-5);
}

void feet()
{
	fill(230, 179, 28);                  
	ellipse(bodyx+25, bodyy+100, 9, 11);
	ellipse(bodyx+32, bodyy+100, 11, 15);
	ellipse(bodyx+39, bodyy+100, 9, 13);

	ellipse(bodyx+60, bodyy+100, 9, 13);
	ellipse(bodyx+67, bodyy+100, 11, 15);
	ellipse(bodyx+74, bodyy+100, 9, 11);
}

void face()
{
	fill(255, 255, 255);                 //eyes
	ellipse(bodyx+27, bodyy+40, 45, 45);
	ellipse(bodyx+73, bodyy+40, 45, 45);
	fill(0);
	ellipse(bodyx+30, bodyy+40, 15, 15);
	ellipse(bodyx+70, bodyy+40, 15, 15);
	fill(255, 255, 255);
	ellipse(bodyx+32, bodyy+40, 5, 5);
	ellipse(bodyx+68, bodyy+40, 5, 5);

	fill(245, 207, 14);                  //beak
	triangle(bodyx+43, bodyy+60, bodyx+57, bodyy+60, bodyx+50, bodyy+55);
	triangle(bodyx+43, bodyy+60, bodyx+57, bodyy+60, bodyx+50, bodyy+70);

	stroke(102, 60, 24);                  //fur
	strokeWeight(2);
	noFill();
	for (int x = bodyx+25; x<bodyx+75; x+=7){
	    arc(x, bodyy+75, 5, 7, 0, PI);
	}
	for (int i = bodyx+35; i<bodyx+75; i+=7){
	    arc(i, bodyy+85, 5, 7, 0, PI);
	}
}