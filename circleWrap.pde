//simple program to make an ellipse wrap when reaching the edges of the screen
//Tristan Miller 2014

int ellipseSize = 400;  
int offset = 500;

void setup(){  //this runs once when program is executed
  size(500, 500);
  background(0);
  ellipseMode(CENTER);
  noStroke();
  fill(255);
}

void draw(){   //this repeats continuously
  
  background(200);
  
  /* cheating! the program doesn't actually detect when
  the ellipse has left the screen.  Instead I space out nine
  circles in a grid around the central ellipse - they all move
  together to create the effect */
  
  /* challenge is to 
  A) make this more efficient
  B) stop cheating!
  */
  
  ellipse(mouseX, mouseY, ellipseSize, ellipseSize);
  ellipse(mouseX - offset, mouseY, ellipseSize, ellipseSize);
  ellipse(mouseX + offset, mouseY, ellipseSize, ellipseSize);
  ellipse(mouseX, mouseY - offset, ellipseSize, ellipseSize);
  ellipse(mouseX, mouseY + offset, ellipseSize, ellipseSize);
  ellipse(mouseX - offset, mouseY - offset, ellipseSize, ellipseSize);
  ellipse(mouseX - offset, mouseY + offset, ellipseSize, ellipseSize);
  ellipse(mouseX + offset, mouseY - offset, ellipseSize, ellipseSize);
  ellipse(mouseX + offset, mouseY + offset, ellipseSize, ellipseSize);

}
