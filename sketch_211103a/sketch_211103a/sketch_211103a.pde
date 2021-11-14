void setup(){
 
  runUnitTests();
}


ArrayList<String> search(String[] list, String input){
  ArrayList<String> results = new ArrayList<String>();
  if(input.equals("*")) {
    for(String element : list){
      results.add(element);
    }
  }
  else if(input.length() >= 2){
    for(String element : list){
      if(element.toLowerCase().contains(input.toLowerCase())){
        results.add(element);
      }
    }
  }
  return results; 
}
