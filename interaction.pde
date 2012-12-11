
// the boolean that controls the pictures
Boolean loopedLetter () {
  boolean hej; 
  hej = true;
  for (int i =0; i<theChosenOne.length()-1; i++){
    char c = theChosenOne.charAt(i);
    if (c == pressedKey){
      hej = false;  
    }    
  } 
  return(hej); 
}

//draws the lines
void drawLine(int posx, int posy){
  fill(255);
  text("_", posx, posy);
}

//draws the right letters
void drawLetters(char c, int posx, int posy){
  fill(255);
  text(c, posx, posy);
  
}

