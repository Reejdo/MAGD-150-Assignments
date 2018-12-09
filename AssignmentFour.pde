//Cole Miller

//Lab Assignment 4

//I used http://colorizer.org/ to help me with the RGB colors

//I also used the If-Else Random program for naming and the Timer resource to help with the program 



int resetState = 0;

int pizzaMoveY = 0; 

int savedTime; 

int totalTime = 500;

int toppingRandom = 0;  

//Colors for text

int red1 = 0; 

int blue1 = 0; 

int red2 = 0; 

int green2 = 0;

int red3 = 0; 

int green3 = 0; 

int blue3 = 0; 

boolean pizzaSauce = false; 

boolean cheese = false;

//Strings for text

String modeOne = "(Click Mouse) Sauce Mode: ";

String modeTwo = "(Press E) Cheese Mode: "; 

String sauceState = "OFF";

String cheeseState = "OFF";

String reset = "Press R To reset the Pizza Slice."; 

String pepperoni = "Press 1 For Pepperoni.";

String dough = "Press 2 For Dough."; 



//Setup the size of the screen and the name

//Return the amount of time since starting the program and put it into savedTime

void setup () {

 size (500, 500);

 surface.setTitle("Pizza Maker");

 savedTime = millis(); 

}



void draw () {

 //Calculate the time passed

 int passedTime = millis() - savedTime; 

 //Timer function

 if (passedTime > totalTime) {

 toppingRandom = int(random(3));

 savedTime = millis(); 

 pizzaMoveY += 50; 

 } 

 

 //Draw tiny Pepperonis and Background Cover

 stroke(0); 

 strokeWeight(2); 

 fill(163, 45, 39);

 ellipse(50, pizzaMoveY, 30, 30);

 ellipse(450, pizzaMoveY, 30, 30); 

 noStroke(); 

 fill(150, 135, 100, 100);

 ellipse(50, pizzaMoveY - 50, 34, 34);

 ellipse(450, pizzaMoveY - 50, 34, 34); 

 

 //Reset tiny pepperonis to top

 if (pizzaMoveY >= 400){

  pizzaMoveY = 0; 

 }

 

 //Text at the bottom

 fill (0); 

 textSize(10);

 text(modeOne, 5, 450);

 fill (red1, 0, blue1); 

 text(sauceState, 150, 450);

 fill (0); 

 text(modeTwo, 5, 470);

 fill (red2, green2, 0); 

 text(cheeseState, 130, 470);

 fill (0); 

 text(pepperoni, 290, 450); 

 text(reset, 290, 470);

 text(dough, 290, 490);

 //While the resetState is less than 1, redraw the background and pizza shape. 

 while (resetState < 1){

 background (150, 135, 100, 100);

 resetState++; 

 }

 

 //Draw the 'pizza sauce' if the boolean is true.

 //Change the color of the text to blue

 if (pizzaSauce == true && cheese == false){

 blue1 = 255; 

 red1 = 0; 

 sauceState = "ON";

 noStroke(); 

 fill (150, 52, 40); 

 ellipse (mouseX, mouseY, 20, 20); 

 } else {

 //Change the color of the text to red

 blue1 = 0; 

 red1 = 255; 

 sauceState = "OFF";  

 }

 //Draw the 'cheese' if the boolean is true.

 //Change the color of the text to green

 if (cheese == true){ 

 red2 = 0; 

 green2 = 255; 

 cheeseState = "ON"; 

 noStroke(); 

 fill (220, 190, 60); 

 rect (mouseX, mouseY, 20, 10);    

 } else {

 //Change the color of the text to red

 red2 = 255; 

 green2 = 0; 

 cheeseState = "OFF";  

 }

}



//If the mouse is pressed, either turn on or turn off the 'pizza sauce' drawing. 

void mousePressed() {

  pizzaSauce = !pizzaSauce; 

}



void keyPressed() {

 //If the E key is pressed, either turn on or turn off the 'cheese' drawing.  

  if (key == 'e' || key == 'E'){

   cheese = !cheese;  

   }

  

  //If the R key is pressed, turn the resetState integer to 1 and reset the image.

 if (key == 'r' || key == 'R'){

   resetState = 0;   

 } 

 //If the 1 key is pressed, draw the pepperoni toppings.

 if (key == '1'){

   stroke(0); 

   strokeWeight(2); 

   fill(163, 45, 39); 

   ellipse (200, 200, 50, 50);

   ellipse (270, 250, 50, 50);

   ellipse(250, 190, 30, 30); 

   ellipse (250, 310, 30, 30); 

   ellipse (320, 190, 40, 40); 

   ellipse (220, 150, 30, 30); 

  }



  if (key == '2'){

   //Draw a premade crust

   stroke (220, 190, 120);

   strokeJoin(ROUND);

   strokeWeight(10); 

   fill (220, 190, 120);

   quad(75, 70, 425, 70, 425, 100, 75, 100);  

   triangle (90, 100, 410, 100, 250, 410);  

  }

}
