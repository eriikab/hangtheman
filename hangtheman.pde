char pressedKey;
void setup () {
  size (1000,600);
  
}

void draw (){
  getNextWord();
  //Ersätt med getRandomWord() när metoden är klar
  drawGraphics();
  println(loopedLetters ());
}
void keyPressed (){
  pressedKey = char(key);
}
