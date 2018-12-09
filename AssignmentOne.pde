//Cole Miller

//Lab Assignment 1



//void setup is used to initialize the program's features, like background and size in this example

void setup () {

background(10); 

size(450, 450);   

}



//void draw is used to draw things on the screen. This is where the 'objects' in 'space' will be drawn 

void draw () {

//Planet middle distant

stroke(50); 

strokeWeight(1);

fill(50);

ellipse(200, 50, 20, 20);  



//Planet right

noStroke(); 

fill(75);

ellipse(380, 175, 40, 40);



//Texture on Planet right

stroke(10);

strokeWeight(2); 

line(380, 175, 385, 175);

line(365, 170, 370, 170);

line(385, 165, 390, 165); 

line(375, 180, 380, 180);

line(382, 185, 390, 185); 



//Pole going through Planet right

noFill(); 

stroke(35); 

strokeWeight(5); 

strokeCap(PROJECT); 

rect(377, 135, 5, 20); 

rect(377, 195, 5, 20); 



//Stars

stroke(250);

strokeWeight(2); 

point(300, 300);   

point(290, 285);   

point(310, 290);

point(320, 320);

point(280, 330); 

point(60, 100); 

point(58, 90); 

point(49, 110);

point(250, 230); 

point(260, 225);

point(245, 220); 



//Shooting Star #1

point(350, 100); 

stroke(250);

strokeWeight(0.1); 

line(350, 100, 325, 125); 

line(350, 100, 330, 130); 

line(350, 100, 325, 115);



//Shooting Star #2

point(260, 165); 

stroke(250);

strokeWeight(0.1); 

line(260, 165, 240, 195); 

line(260, 165, 230, 185); 

line(260, 165, 230, 195);



//Planet far left

stroke(175);

strokeWeight(1); 

fill(175); 

ellipse(100, 150, 100, 100);



//Craters on Planet left

stroke(150);

strokeWeight(5);

fill(150); 

ellipse (110, 160, 10, 10);

noStroke(); 

fill(130); 

ellipse (75, 130, 15, 15);

stroke(150); 

strokeWeight(10);

strokeJoin(ROUND); 

rect(100, 191, 5, 5); 



//Rings Planet Bottom (Background depth)

stroke(35); 

strokeWeight(2);

line(81, 369, 191, 319); 

line(101, 379, 191, 339);



//Planet bottom

noStroke();

fill(190); 

ellipse(140, 350, 75, 75);



//Rings Planet Bottom (Foreground depth)

stroke(35); 

strokeWeight(2);

line(80, 370, 190, 320); 

line(100, 380, 190, 340); 

}