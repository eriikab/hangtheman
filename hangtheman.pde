char pressedKey;
int frame;
PImage[] img = new PImage[20];
PFont font;
int wrongLetterPosX = 700;
int wrongLetterPosY = 400;
String theChosenOne;

//texten som vi använder för att hämta ord ur
String URL = "http://www.textfiles.com/survival/wounds.txt";

//



//skapar en arraylist av string URL
ArrayList <String> hangmanText;

void setup () {
  
  
  size (1000,600);
  background(56,56,56);
  
  font = loadFont("Verdana-48.vlw");
  textFont(font, 48);
  
  hangmanText = getAllWords(URL);
  //theChosenOne = getWord(hangmanText);
  println(hangmanText);
  
  
  
  img[1] = loadImage("Press upphissad kopia.jpg");
  img[2] = loadImage("press andra position kopia.jpg");
  img[3] = loadImage("press tredje position kopia.jpg");
  img[4] = loadImage("press böja huvud kopia.jpg");
  img[5] = loadImage("press böja huvud och kropp kopia.jpg");
  img[6] = loadImage("press böja huvud och kropp mer kopia 2.jpg");
  img[7] = loadImage("Mos kopia.jpg");
  img[8] = loadImage("press böja huvud och kropp mer kopia 2.jpg");
  img[9] = loadImage("press böja huvud och kropp kopia.jpg");
  img[10] =loadImage("press böja huvud kopia.jpg");
  img[11] =loadImage("press tredje position kopia.jpg");
  img[12] =loadImage("press andra position kopia.jpg");
  img[13] =loadImage("dörr öppnas kopia.jpg");
  img[14] =loadImage("dörr öppen kopia.jpg");
  img[15] =loadImage("dörr öppen springer 1 kopia.jpg");
  img[16] =loadImage("dörr öppen springer 2 kopia.jpg");
  img[17] =loadImage("dörren öppen springer 3 kopia.jpg");
  img[18] =loadImage("dörr öppen springer 4 kopia.jpg");
  img[19] =loadImage("elvis has left the building kopia.jpg");
  
  frame=1;
}

void draw (){
  
loadImages(frame);
    
  

}
void keyPressed (){
  pressedKey = char(key);
  println(loopedLetters ());
  
  if (loopedLetter()==true){
    
    frame=frame+1;
   
    
  }
  
      if (loopedLetter()==true){
 
   
    text (pressedKey, wrongLetterPosX, wrongLetterPosY );
    wrongLetterPosX = wrongLetterPosX +50;
    if (wrongLetterPosX > 1000){
      wrongLetterPosX = 700;
      wrongLetterPosY=wrongLetterPosY+20;
    }
  }
  
  
  
}
