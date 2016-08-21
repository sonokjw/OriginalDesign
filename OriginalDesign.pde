int bodyx = 155;
int bodyy = 90;
int branchx = 320;
int branchy = bodyy+95;
int cx = 320;
int cx2 = 100;

void setup()
{
  size(600, 600);
}

void draw()
{
	background(20, 30, 71);
	moon();
	clouds();
	tree();
	body();
	ears();
	feet();
	face();
}

void moon()
{
	noStroke();
	fill(245, 229, 49);
	ellipse(500, 50, 100, 100);
}

void clouds()
{
	noStroke();
	fill(230, 230, 230);   //clouds
    ellipse(cx, 100, 100, 40);  //1
    ellipse(cx +50, 100, 60, 30);
    ellipse(cx -60, 100, 60, 30);
    ellipse(cx2, 150, 60, 40);  //2
    ellipse(cx2-30, 150, 40, 30);
    ellipse(cx2+40, 150, 80, 30);
    cx-=0.2;
    cx2-=0.2;
    if(cx < -150){
        cx = 675;
        cx -=0.2;
    }
    if(cx2 < -150){
        cx2 = 675;
        cx2 -= 0.2;
    }
}

void tree()
{
	noStroke();
	fill(71, 39, 4);
	rect(20, -10, 60, 1000);
	triangle(branchx-240, branchy+5, branchx-240, branchy+15, branchx, branchy);
	//leaves
	fill(31, 168, 24);
	arc(branchx+1, branchy+5, 20, 15, 1.2*PI, 2.17*PI);
	fill(8, 112, 11);
	arc(branchx-5, branchy+10, 15, 25, 1.3*PI, 2.2*PI);
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