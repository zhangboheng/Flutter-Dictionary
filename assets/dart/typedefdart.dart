// ignore_for_file: avoid_print

/*

A typedef, or a function-type alias, helps to define pointers to executable code 
within memory. Simply put, a typedef can be used as a pointer that references a function.

*/

typedef ManyOperation = Function(int firstNo, int secondNo);
//function signature

void addCal(int firstNo, int second) {
  print("Add result is ${firstNo + second}");
}

void subCal(int firstNo, int second) {
  print("Subtract result is ${firstNo - second}");
}

void divCal(int firstNo, int second) {
  print("Divide result is ${firstNo / second}");
}

void calTotal(int a, int b, ManyOperation oper) {
  print("Inside calculator");
  oper(a, b);
}

void main() {
  ManyOperation oper = addCal;
  oper(10, 20);
  oper = subCal;
  oper(30, 20);
  oper = divCal;
  oper(50, 5);
  //also
  calTotal(5, 5, addCal);
  calTotal(5, 5, subCal);
  calTotal(5, 5, divCal);
}
