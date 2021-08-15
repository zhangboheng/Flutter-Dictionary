// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

/*

A variable must be declared before it is used. Dart uses the var keyword to 
achieve the same. The syntax for declaring a variable is as given below −

*/

void main() {
  var name = 'Smith';
  print(name);
  String names = 'Smith';
  print(names);
  int num = 10;
  print(num);
  double per = 1.12;
  print(per);
  bool def = true;
  bool ide = false;
  print(def);
  print(ide);
  var nos;
  print(nos); //output Null
}

//const, final and late

/*

const: "const" has a meaning that's a bit more complex and subtle in Dart. 
const modifies values. You can use it when creating collections, like const 
[1, 2, 3], and when constructing objects (instead of new) like const 
Point(2, 3). Here, const means that the object's entire deep state can be 
determined entirely at compile time and that the object will be frozen and 
completely immutable.

final: "final" means single-assignment: a final variable or field must have an 
initializer. Once assigned a value, a final variable's value cannot be changed. 
final modifies variables.

late: The keyword late can be used to mark variables that will be initialized 
later, i.e. not when they are declared but when they are accessed. 
This also means that we can have non-nullable instance fields that are 
initialized later.

*/
