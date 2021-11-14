String[] liste = {"Paris", "Budapest", "Skopje", "Rotterdam", "Valencia", "Vancouver", "Amsterdam", "Vienna", "Sydney", "New York City", "London", "Bangkok", "Hong Kong", "Dubai", "Rome", "Istanbul"}; 

void runUnitTests(){
  String[]list = "search";
  String[]search(list,"a");
  if(resultat.lenght==0){
    println("succes");
    else{
      println("false");
    }
  
  //her skriver du dine unit test's
  //nedenfor er bare et eksempel på tre unit-tests
 unitTest1();
}
void unitTest1(){
   int antalResultater = search(liste,"V").length;
   int antalRigtigtSvar = 0;
   compareInts(antalRigtigtSvar,antalResultater,"search input 'a', return no results."); 
   }
void uniTest2(){
  int antalResultater = search(liste,"V").length;
  int antalRigtigeSvar = 0;
  compareInts(antalRigtigeSvar,antalResultater,"Search input'abe', return results.");
}
