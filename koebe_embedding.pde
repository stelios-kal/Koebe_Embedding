//Nicholas Briganti
//Stelianos Kalogeridis

PFont f;

// Variable to store text currently being typed
int typing;

// Variable to store saved text when return is hit
int saved;


void setup() {
  size(640,360);
  f = createFont("Arial",16,true);
}

void draw() {
  background(255);
  int indent = 25;
  
  // Set the font and fill for text
  textFont(f);
  fill(0);
  
  // Display everything
  text("Click in this applet and type coordinates of input graph. \nHit return to save what you typed. ", indent, 40);
  text(typing,indent,90);
  text(saved,indent,130);
  int[] coordinates = new int [4];
  coordinates[1] = saved;
  coordinates[2] = saved;
  stroke(0, 153, 255);
  point(coordinates[1], coordinates[2]);
}

void keyPressed() {
  // If the return key is pressed, save the String and clear it
  if (key == '\n' ) {
    saved = typing;
    typing = 0;
  // Handles proper numeric key inputs
  } else if ((key >= '0' && key <= '9')){
      typing = (typing*10) + (key-48);
  // Handles the backspace key to delete previous input
  } else if (key== 8){
      typing = typing/10; 
  // Handles all other key inputs
  } else {}
}

//stroke(255);
//point(width * 0.5, height * 0.5);
//point(width * 0.5, height * 0.25);

//stroke(0, 153, 255);
//line(0, height*0.33, width, height*0.33);

//stroke(255, 153, 0);
//ellipseMode(CENTER);
//ellipse(width*.5, height*.4, width * 0.5, height * 0.8);
