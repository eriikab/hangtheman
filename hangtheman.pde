char pressedKey;
int frame;
PImage[] img = new PImage[19];
PFont font;
int wrongLetterPosX = 620;
int wrongLetterPosY = 400;
String theChosenOne, almostThere;


//boolean  letter0, letter1, letter2, letter3, letter4, letter5, letter6,letter7, letter8, letter9, letter10;
boolean[] letter;

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
  //println(theChosenOne);
 
 
 
 
 //Gets the random word
    int index = int(random(hangmanText.size())); 
  println(index);
  almostThere = hangmanText.get(index);
  for (int i = 0; i<1000; i++){
    if (almostThere.length() < 5 || almostThere.length() > 12){
      index = int(random(hangmanText.size())); 
      println(index);
      almostThere = hangmanText.get(index);
    }else{
      theChosenOne = almostThere;
    
    }
  }
  println(theChosenOne);
  
  
  //Loads the images
  img[0] = loadImage("Press upphissad kopia.jpg");
  img[1] = loadImage("press andra position kopia.jpg");
  img[2] = loadImage("press tredje position kopia.jpg");
  img[3] = loadImage("press böja huvud kopia.jpg");
  img[4] = loadImage("press böja huvud och kropp kopia.jpg");
  img[5] = loadImage("press böja huvud och kropp mer kopia 2.jpg");
  img[6] = loadImage("Mos kopia.jpg");
  img[7] = loadImage("press böja huvud och kropp mer kopia 2.jpg");
  img[8] = loadImage("press böja huvud och kropp kopia.jpg");
  img[9] =loadImage("press böja huvud kopia.jpg");
  img[10] =loadImage("press tredje position kopia.jpg");
  img[11] =loadImage("press andra position kopia.jpg");
  img[12] =loadImage("dörr öppnas kopia.jpg");
  img[13] =loadImage("dörr öppen kopia.jpg");
  img[14] =loadImage("dörr öppen springer 1 kopia.jpg");
  img[15] =loadImage("dörr öppen springer 2 kopia.jpg");
  img[16] =loadImage("dörren öppen springer 3 kopia.jpg");
  img[17] =loadImage("dörr öppen springer 4 kopia.jpg");
  img[18] =loadImage("elvis has left the building kopia.jpg");
  
  
  frame=0;
  loadImages(frame);
  
  //puts in the right number of booleans
  letter = new boolean[theChosenLetters(theChosenOne).length];
}

void draw (){

  
  //draws a rect that covers up the letters and underlines
  fill(56,56,56);
  stroke(56,56,56);
  rect(615,0,1000,100);
  
  
  //draws the letters and underlines
  for (int i = 0; i < theChosenLetters(theChosenOne).length ;i++){
    if (letter[i]==true){
      drawLetters(theChosenLetters(theChosenOne)[i], 620 + i*40, 50);
    }else{
      drawLine(620+i*40, 50);
    }
  }
  


}



void keyPressed (){
  pressedKey = char(key);
//  println(loopedLetters ());
  
  if (loopedLetter()==true){
    
    //loads the next image
    if (frame<6){
      frame=frame+1;
      loadImages(frame);
  
    //draws the wrong letters
      text (pressedKey, wrongLetterPosX, wrongLetterPosY );
      wrongLetterPosX = wrongLetterPosX +50;
      if (wrongLetterPosX > 1000){
        wrongLetterPosX = 620;
        wrongLetterPosY=wrongLetterPosY+50;
      }  
    }
  }
  //draws Game Over
  if (frame>=6){
    fill(255);
    textSize(42);
    text ("Game over", 300,200);
  }
  
  
  //Gives boolean a value
  for (int i = 0; i < theChosenLetters(theChosenOne).length ;i++){
    if (theChosenLetters(theChosenOne)[i] == pressedKey){
      letter[i]=true;
    }
  }  
}

