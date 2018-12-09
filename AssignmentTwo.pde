//Cole Miller

//Lab Assignment 2

// The website http://hslpicker.com/#fff was used to find the Hexidecimal color numbers



void setup () {

size(500, 500);  

//Light Blue Sky

colorMode (RGB, 255, 255, 255, 100); 

background (0, 175, 255, 100);  

}



void draw () {



//Clouds

noStroke (); 

fill (255, 255, 255, 100); 

arc (250, 0, 500, 100, 0, TWO_PI, OPEN); 

arc (50, 20, 50, 50, 0, TWO_PI, OPEN);

arc (400, 30, 70, 50, 0, TWO_PI, OPEN);

arc (200, 40, 80, 40, 0, TWO_PI, OPEN);

  

//Scenery Below

noStroke(); 

colorMode (HSB, 360, 100, 100, 100);

fill (22, 50, 75, 100);  

quad (0, 450, 500, 450, 500, 475, 0, 475); 

fill (145, 100, 175, 100); 

quad (0, 475, 500, 475, 500, 500, 0, 500);

fill (145, 100, 175, 100); 

quad (0, 450, 500, 450, 500, 445, 0, 445);



//Background Balloons

stroke (2); 

colorMode (#AABBCC); 

fill (#2600e6);

ellipse (150, 200, 50, 60); 

noFill(); 

stroke(5); 

bezier (150, 230, 160, 290, 140, 286, 150, 300);  

stroke (2);

fill (#00e60b); 

ellipse (350, 200, 50, 60);

noFill(); 

stroke(5); 

bezier (350, 230, 360, 290, 340, 286, 350, 300);



//Hot Air Balloon  

stroke(2); 

colorMode (HSB, 360, 100, 100, 100); 

fill (40, 100, 35, 100); 

quad (225, 350, 275, 350, 275, 300, 225, 300);

colorMode (RGB, 255, 255, 255, 100); 

line (225, 300, 200, 175);

line (275, 300, 300, 175);

fill (255, 50, 50); 

ellipse (250, 175, 100, 100);  

arc (250, 175, 100, 150, 0, PI, OPEN);

line (250, 350, 250, 300);

line (225, 325, 275, 325);

fill (255, 50, 255); 

triangle (225, 200, 275, 200, 250, 160); 

triangle (220, 180, 240, 160, 215, 155);

triangle (260, 160, 275, 180, 290, 155); 

}