

Boolean loopedLetters () {
  String asd = "hejsan"; //utbytes till metod för slumpat ord
  boolean hej; 
  hej = false;
  asd = asd.toLowerCase();
  for (int i =0; i<asd.length()-1; i++){
    char c = asd.charAt(i);
    if (c == pressedKey){
      hej = true;
      
    }
    
  } 
  return(hej);
  
}
