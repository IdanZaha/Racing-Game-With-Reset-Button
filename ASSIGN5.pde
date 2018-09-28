String airplane1 = "Private Jet wins the game!"; // Text for Airplane1 Winning.
String airplane2 = "Commercial Plane wins the game!";  // Text for Airplane2 Winning.
int A = 100; // A Integer for A Key
int L =  100; // L Integer for L Key
boolean stops = false; // Boolean that Stops the images at a certain Y.
boolean finished = false; // Boolean that makes RESET button work!

PImage Airplane1; // Image Name
PImage Airplane2; // Image Name
void setup() {
  size(1000, 1000); // Size of the screen.
  Airplane1 = loadImage("airplane1.png"); // Image loading in.
  Airplane2 = loadImage("airplane2.png"); // Image loading in.
}

void draw() {
  background(0, 75, 0); // Background color.
  fill(170); // Color of rects.
  rect(75, 20, 100, 950); // Runway 1.
  rect(775, 20, 100, 950); // Runway 2.
  fill(255); // Colot of rects.
  rect(790, 850, 15, 100); // Runway stripes.
  rect(815, 850, 15, 100); // Runway stripes.
  rect(845, 850, 15, 100); // Runway stripes.
  rect(90, 850, 15, 100); // Runway stripes.
  rect(115, 850, 15, 100); // Runway stripes.
  rect(140, 850, 15, 100); // Runway stripes.
  fill(0); // Color of rect.
  rect(355, 100, 250, 100); // Airport.
  fill(255); // Color of text.
  textSize(25); // Text size.
  text("Idan's Airport", 395, 165); // Name of my Airport.
  image(Airplane1, 100, 1+A, 50, 50); // Airplane1 Image on the screen/ +A for the KeyPressed.
  image(Airplane2, 800, 1+L, 50, 50); // Airplane2 Image on the screen/ +L for the KeyPressed.
  fill(255); // Fill Color 

  if (L >= 900) { // If L reaches 900 Y, A Wins.
    {
      fill(255); // Fill Color
    }
    {
      textSize(50); // Text Size
    }
    {
      text(airplane2, 50, 800); // Text for airplane2.
    }
  } else if (A >= 900) { // If A Reaches 900 Y, A Wins.
    {
      fill(255); // Fill Color
      textSize(50); // Text size
      text(airplane1, 150, 800); // Text for airplane1.
      rectMode(CENTER); //Centers Rect.
      rect(450, 500, 300, 100); // Creates Rect.
      fill(0); // Makes Text Fill Black.
      textAlign(CENTER); // Aligns text to center.
      text("RESET", 450, 500); // Creates text.
      stops = true; // Boolean to make everything stop at a certain Y.
      rectMode(CORNER); // Aligns rect back to corner.
      textAlign(CORNER); // Aligns text back to corner.
      finished = true; // Boolean to make everything reset.
    }
  }
}


void keyPressed() {
  if (stops == false) { // This is so at a certain Y everything stops.
    if (key == 'a' || key == 'A') // KeyPressed for A.
    {
      A += 5; // Speed of click for A.
    } else if (key == 'l' || key == 'L') // KeyPressed for L.
    {
      L += 5; // Speed of click for L.
    }
  }
}

void mouseClicked() {
  if (stops == true) // This is so when it stops the reset button works.
  {    if (mouseX > 300 && mouseX < 600 && mouseY > 450 && mouseY < 500) // This is the size of what you can click to reset the button.
    {
      A = 100; // Resets A.
      L =  100; // Resets L.
      stops = false; // Resets stops.
      finished = false; // Resets finished.
    }
  }
}
