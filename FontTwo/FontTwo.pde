/*
Tutorial Two

Getting to know what on earth is
if (test){
  statements
}


Also,
using random() to generate various sizes of rectangles 
within the boundary 'F' within a nested loop


By Felix Austin
*/


size(400,400);

stroke(10); //line weight

//Creating boundary 'F'

int x0 = 120; //Assign as fixed integer values
int x1 = 200;
int x2 = 220;
int x3 = 280;
int y0 = 100;
int y1 = 160;
int y2 = 180;
int y3 = 230;
int y4 = 300;


/*
Please refer to Yuta's Github under Font01 on the following
*/

line(x0,y0,x3,y0); //(x1,y1, x2,y2)
line(x0,y0,x0,y4);
line(x0,y4,x1,y4);
line(x1,y4,x1,y3);
line(x1,y3,x2,y3);
line(x2,y3,x2,y2);
line(x2,y2,x1,y2);
line(x1,y2,x1,y1);
line(x1,y1,x3,y1);
line(x3,y1,x3,y0);




int x; //assigned as integer with unspecified value
int y;

for (x = x0; x <= x3; x = x + 15){
  for (y = y0; y <= y1; y = y + 15){
     if((x % 2 <= 1) && ((y % 2) <= 1)){     
     float w = random(10, 30); //max,min width of rect
     float h = random(20, 40); //max,min height of rect
       noFill();  
       rectMode(CENTER);
       rect(x,y,w,h);
    }
  }
}


/*
if the value of x divided by the number 2 has remaining value of less than or equal to 1,
and if the value of y divided by the number 2 has remaining value of less than or equal to 1,
then rectangle is x, y, width, height

&& means both conditions have to be met at the same time

in the first iteration, where
x = 120, // 120 is the starting value of the letter 'F' defined by x0
y = 100, // 100 is the starting value of the letter 'F' defined by y0

x, where 120 divided by the number 2 is = 0,
y, where 100 divided by the number 2 is = 0,
both conditions are met since both are less than or equal to 1

therefore draw,
rectangle at x = 120, y = 100, w = random value between 10 to 30, h = random value between 20 to 40

each increment value of x is plus 15 from previous
each increment value of y is plus 15 from previous

maximum value of x is less than or equal to 280.
280 is the furthest x value for the letter 'F' defined by x3

maximum value of y is less than or equal to 160.
160 is maximum value of y that the 'rectangles' should be generated within, defined by y1



*/




