import 'dart:math';
// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class TokensCreator {
    // The basic string thats token will be created from  
 String _text="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678910#\$%^&*+-~";
/*
createToken function will generate token and return it as string 
*/
String createToken(int lengthOfToken){
  String token=""; // init the token as empty string 
  var now = DateTime.now();
  Random rnd = Random();
  for(var i=0;i<lengthOfToken;i++){
  int min = 13, max = 42;
  int r = min + rnd.nextInt(max - min);
  String miliScoundsString=now.millisecondsSinceEpoch.toString();
  token+=_text[r]+miliScoundsString[0+rnd.nextInt(12 - 0)];
  }
  return token;
}

/*
createTokenGroup function will generate group of  tokens and return it as List of strings 
*/
List<String> createTokenGroup(int count,int lengthOfToken){
  String token="";
  List <String> tokens=[];
  var now = DateTime.now();
  Random rnd = Random();  
  for(int j=0;j<count;j++){
  for(var i=0;i<lengthOfToken;i++){
  int min = 13, max = 42;
  int r = min + rnd.nextInt(max - min);
  String miliScoundsString=now.millisecondsSinceEpoch.toString();
  token+=_text[r]+miliScoundsString[0+rnd.nextInt(12 - 0)];
  }
  tokens[j]=token; 
  } 
 return tokens;
}
}
