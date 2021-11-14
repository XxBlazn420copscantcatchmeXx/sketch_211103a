//Disse meget simple metoder er dit framework til at unit-teste
//Det er ikke færdigt ;-)

void compareBooleans(boolean a, boolean b, String nameOfTest){
  printTestResult(a==b,nameOfTest);
}

void compareInts(int a, int b, String nameOfTest){
   printTestResult(a==b,nameOfTest);
}

void largerInts(int a, int b, String nameOfTest){
   printTestResult(a<b,nameOfTest);
}


void compareFloats(float a, float b, String nameOfTest){
    printTestResult(a==b,nameOfTest);
}

void compareStrings(String a, String b, String nameOfTest){
    printTestResult(a.equals(b),nameOfTest);
}

void printTestResult(boolean result, String nameOfTest){
  if(result) println("SUCCES :" + nameOfTest); else println("FAILS :" + nameOfTest);
}
