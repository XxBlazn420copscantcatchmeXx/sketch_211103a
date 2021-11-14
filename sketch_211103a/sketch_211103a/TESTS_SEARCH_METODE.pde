String[] liste = {"Paris", "Budapest", "Skopje", "Rotterdam", "Valencia", "Vancouver", "Amsterdam", "Vienna", "Sydney", "New York City", "London", "Bangkok", "Hong Kong", "Dubai", "Rome", "Istanbul"}; 

void runUnitTests(){
  int passed = 0;
  int total = 5;
  
  if(unitTest1()){
    passed++;
  }
  if(unitTest2()){
    passed++;
  }
  if(unitTest3()){
    passed++;
  }
  if(unitTest4()){
    passed++;
  }
  if(unitTest5()){
    passed++;
  }
  
  println("Passed " + passed + "/" + total + "(" + (100*passed/total)  + "%) unit tests.");
}

ArrayList<String> runUnitTest(int number, String input, String description){
  println("Unit test " + number);
  println(description);
  println("Input: " + input);
  ArrayList<String> results = search(liste, input);
  println("Resultat: " + results.toString());
  return results;
}

boolean unitTest1(){
  ArrayList<String> results = runUnitTest(1, "V", "If the search text is fewer than 2 characters, then should return no results. (It is an optimization feature of the search functionality.)");
  boolean passed = results.size() == 0;
  println(passed ? "SUCCESS\n" : "FAILS\n");
  return passed;
}

boolean unitTest2(){
  ArrayList<String> results = runUnitTest(2, "Va", "If the search text is equal to or more than 2 characters, then it should return all the city names starting with the exact search text.");
  boolean passed = true;
  String[] verification = {"Valencia", "Vancouver"};
  for(int i = 0; i<results.size(); i++){
    if(!results.get(i).equals(verification[i])){
      passed = false;
      break;
    }
  }
  println(passed ? "SUCCESS\n" : "FAILS\n");
  return passed;
}

boolean unitTest3(){
  ArrayList<String> results = runUnitTest(3, "Valencia", "The search functionality should be case insensitive");
  boolean passed = results.equals(search(liste, "valencia"));
  println(passed ? "SUCCESS\n" : "FAILS\n");
  return passed;
}

boolean unitTest4(){
  ArrayList<String> results = runUnitTest(4, "ape", "The search functionality should work also when the search text is just a part of a city name");
  boolean passed = results.size() == 1 && results.get(0) == "Budapest";
  println(passed ? "SUCCESS\n" : "FAILS\n");
  return passed;
}

boolean unitTest5(){
  ArrayList<String> results = runUnitTest(5, "*", "If the search text is a “*” (asterisk), then it should return all the city names.");
  boolean passed = results.size() == liste.length;
  println(passed ? "SUCCESS\n" : "FAILS\n");
  return passed;
}
