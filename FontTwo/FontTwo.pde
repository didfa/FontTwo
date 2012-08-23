/*
Using random()
to generate various sizes of rectangles 
within the boundary 'F'
*/


size(400,400);

stroke(10);
fill(0);

//Creating boundary 'F'
int x0 = 120;
int x1 = 200;
int x2 = 220;
int x3 = 280;
int y0 = 100;
int y1 = 160;
int y2 = 180;
int y3 = 230;
int y4 = 300;

line(x0,y0,x3,y0); 
line(x0,y0,x0,y4);
line(x0,y4,x1,y4);
line(x1,y4,x1,y3);
line(x1,y3,x2,y3);
line(x2,y3,x2,y2);
line(x2,y2,x1,y2);
line(x1,y2,x1,y1);
line(x1,y1,x3,y1);
line(x3,y1,x3,y0);

//Creating random sizes of rectangles

int x;
int y;


for (x = x0; x <= x3; x = x + 15){
  for (y = y0; y <= y1; y = y + 15){
     if((x % 2 <= 2) && ((y % 2) <= 2)){     
     float w = random(10, 30); //max,min width of rect
     float h = random(20, 40); //max,min height of rect
       noFill();  
       rectMode(CENTER);
       rect(x,y,w,h);
    }
  }
}







