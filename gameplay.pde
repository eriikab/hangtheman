ArrayList<String> getAllWords(String URL){
  
  ArrayList<String> hangmanWords = new ArrayList<String>();
  String[] s = loadStrings(URL);

  for (int i = 0; i < s.length; i++){
    
    // devides text into words
    String[] textFileWords = (s[i].split(" "));
  
    for(int j=0; j<textFileWords.length; j++){
      String word = textFileWords[j];
      word = word.toLowerCase();
      word = word.replace(".","");//replaces special characters of choice with ""
      word = word.replace(",","");
      word = word.replace("!","");
      word = word.replace("?","");
      word = word.replace("/","");
      word = word.replace(">","");
      word = word.replace("<","");
      word = word.replace("(","");
      word = word.replace(")","");
      word = word.replace("*","");
      word = word.replace("-","");
      hangmanWords.add(word); // puts the fixed words into ArrayList
    }
  }
//println(hangmanWords);
    return (hangmanWords);
}



//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
//----------------------WORD EXTRATOR---------------------
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
//

//FIX THIS INTO WORKING!
/*
  String getWord(ArrayList <String> theWords){


  
 
  int index = int(random(theWords.size())); 
  println(index);
  println(theWords.get(index));  
  
  String snopp = theWords.get(index);
  
  return snopp();
  
}
*/
