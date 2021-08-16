// ignore_for_file: avoid_print

/*

An interface defines the syntax that any entity must adhere to. Interfaces define 
a set of methods available on an object. Dart does not have a syntax for declaring 
interfaces. Class declarations are themselves interfaces in Dart.

Classes should use the implements keyword to be able to use an interface. It is 
mandatory for the implementing class to provide a concrete implementation of all 
the functions of the implemented interface. In other words, a class must redefine 
every function in the interface it wishes to implement.

*/

void main() {
  ConsolePrinter cp = new ConsolePrinter();
  cp.printData();
}

class Printer {
  void printData() {
    print("__________Printing Data__________");
  }
}

class ConsolePrinter implements Printer {
  @override
  void printData() {
    print("__________Printing to Console__________");
  }
}
