import processing.sound.*;
Boolean marker=false;
  SoundFile file;
  String audioName = "song.mp3";
  String path;
int reset=1;
PImage logo;
color white=255, resetColour=white, red=#FF0303, black=0; 
color RedColour, GreenColour, OrangeColour, BlueColour, YellowColour, LavenderColour, PinkColour, LGreenColour, CyanColour, DGreenColour, LBlueColour, LBrownColour, PurpleColour, DBrownColour, GreyColour, NavyColour, WhiteColour, BlackColour;
PFont font;
Button circleButton, lineButton, eraserButton, pencilButton, blackButton, redButton, blueButton, pinkButton, yellowButton, greenButton, orangeButton, purpleButton, aquaButton, musicButton, thick1Button, thick2Button, thick3Button, thick4Button;
int initialFontSize=55;
int size;
int fill;
int textColor;
int setColour;
int setThickness;
String setTool;
int Pencil, Circle, Line;



void setup() {
    size(1200, 600);
    background(255);
    logo = loadImage ("ListenNDraw.png");
    path = sketchPath(audioName);
    file = new SoundFile(this, path);

    pencilButton = new Button(440,30,50,50,"Pencil",0,300,200);
    circleButton = new Button(440,80,50,50,"Circle",0,300,200);
    lineButton = new Button(440,130,50,50,"Line",0,300,200);
    eraserButton = new Button(440,180,50,50,"Eraser",0,300,200);
    musicButton = new Button(440,230,50,50,"Music",0,300,200);
    blackButton = new Button(150,300,50,50,"Black",0,0,0);
    redButton = new Button(200,300,50,50,"Red",255,0,0);
    blueButton = new Button(250,300,50,50,"Blue",0,0,255);
    pinkButton = new Button(150,350,50,50,"Pink",255,20,147);
    yellowButton = new Button(200,350,50,50,"Yellow",255,255,0);
    greenButton = new Button(250,350,50,50,"Green",0,255,0);
    orangeButton = new Button(150,400,50,50,"Orange",255,128,0);
    purpleButton = new Button(200,400,50,50,"Purple",128,0,255);
    aquaButton = new Button(250,400,50,50,"Aqua",0,255,255);
    thick1Button = new Button(440,300,50,50,"Thick 1",0,300,200);
    thick2Button = new Button(440,350,50,50,"Thick 2",0,300,200);
    thick3Button = new Button(440,400,50,50,"Thick 5",0,300,200);
    thick4Button = new Button(440,450,50,50,"Thick 20",0,300,200);

  font = createFont ("Ebrima", initialFontSize);
}

void draw() {
stroke(0);
strokeWeight(2);
line(500, 30, 1000, 30);
stroke(0);
strokeWeight(2);
line(1000, 30, 1000, 500);
stroke(0);
strokeWeight(2);
line(500, 500, 1000, 500);
stroke(0);
strokeWeight(2);
line(500, 500, 500, 30);
stroke(0);
strokeWeight(1);
 image(logo, 20, 50, width/3, height/3);

  pencilButton.update();
  pencilButton.render();
  circleButton.update();
  circleButton.render();
  lineButton.update();
  lineButton.render();
  eraserButton.update();
  eraserButton.render();
  blackButton.update();
  blackButton.render();
  redButton.update();
  redButton.render();
  blueButton.update();
  blueButton.render();
  pinkButton.update();
  pinkButton.render();
  yellowButton.update();
  yellowButton.render();
  greenButton.update();
  greenButton.render();
  orangeButton.update();
  orangeButton.render();
  purpleButton.update();
  purpleButton.render();
  aquaButton.update();
  aquaButton.render();
  musicButton.update();
  musicButton.render();
  thick1Button.update();
  thick1Button.render();
  thick2Button.update();
  thick2Button.render();
  thick3Button.update();
  thick3Button.render();
  thick4Button.update();
  thick4Button.render();
  
      if(musicButton.isClicked()){
      file.play();
  }
  
    if(eraserButton.isClicked()){
      setColour = 255;
      setTool = "Pencil";
              println("Eraser Selected");
  }
    if(blackButton.isClicked()){
      setColour = Black;
              println("Black Selected");
  }
      if(redButton.isClicked()){
      setColour = Red;
         println("Red Selected");
  }
        if(blueButton.isClicked()){
      setColour = Blue;
         println("Blue Selected");
  }
        if(pinkButton.isClicked()){
      setColour = Pink;
         println("Pink Selected");
  }
        if(yellowButton.isClicked()){
      setColour = Yellow;
         println("Yellow Selected");
  }
        if(greenButton.isClicked()){
      setColour = Green;
         println("Green Selected");
  }
        if(orangeButton.isClicked()){
      setColour = Orange;
         println("Orange Selected");
  }
        if(purpleButton.isClicked()){
      setColour = Purple;
         println("Purple Selected");
  }
        if(aquaButton.isClicked()){
      setColour = Aqua;
         println("Aqua Selected");
  }
            if(thick1Button.isClicked()){
      setThickness = 0;
         println("Thickness set to 1");
  }
          if(thick2Button.isClicked()){
      setThickness = 2;
         println("Thickness set to 2");
  }
        if(thick3Button.isClicked()){
      setThickness = 5;
         println("Thickness set to 5");
  }
         if(thick4Button.isClicked()){
      setThickness = 20;
         println("Thickness set to 20");
  }
           if(pencilButton.isClicked()){
      setTool = "Pencil";
         println("Tool set to Pencil");
  }
           if(circleButton.isClicked()){
      setTool = "Circle";
         println("Tool set to Circle");
  }
           if(lineButton.isClicked()){
      setTool = "Line";
         println("Tool set to Line");
  }
  
  strokeWeight(setThickness);
  stroke(setColour);
  
  if (mouseX>505 && mouseX<995 && mouseY>40 && mouseY<495){
  if (mousePressed == true) {
    
 if (setTool == "Pencil"){
           line(mouseX, mouseY, pmouseX, pmouseY);  
 }
  if (setTool == "Circle"){
    ellipse(mouseX, mouseY, setThickness+5, setThickness+5);
    fill(setColour);
    noStroke();
 }
  if (setTool == "Line"){
      //store first mouse click location
      //wait for second click
      //after second click set the line from click one to click two
     
}
}
}
}
  
  
  
  
  
  
