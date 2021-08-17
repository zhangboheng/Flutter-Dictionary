// ignore_for_file: avoid_print

/*

Object-Oriented Programming defines an object as “any entity that has a defined boundary.”

An object has the following −

>> State − Describes the object. The fields of a class represent the object’s state.

>> Behavior − Describes what an object can do.

>> Identity − A unique value that distinguishes an object from a set of similar other objects. 
Two or more objects can share the state and behavior but not the identity.

>> The period operator (.) is used in conjunction with the object to access a class’ data members.

*/

class Student {
  void testMethod() {
    print("This is a  test method");
  }

  void testMethod1() {
    print("This is a  test method1");
  }
}

class Teacher {
  void teachOne() {
    print("This is a  test method");
  }

  void teachTwo() {
    print("This is a  test method1");
  }
}

void main() {
  Student()
    ..testMethod()
    ..testMethod1();

  Teacher a = Teacher();
  a.teachOne();
  a.teachTwo();
}
