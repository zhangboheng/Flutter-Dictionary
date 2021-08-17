// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

/*

Dart is an object-oriented language. It supports object-oriented programming features 
like classes, interfaces, etc. A class in terms of OOP is a blueprint for creating 
objects. A class encapsulates data for the object. Dart gives built-in support for 
this concept called class.

Declaring a Class
Use the class keyword to declare a class in Dart. A class definition starts with 
the keyword class followed by the class name; and the class body enclosed by a 
pair of curly braces. The syntax for the same is given below −

class class_name {  
   <fields> 
   <getters/setters> 
   <constructors> 
   <functions> 
}

The class keyword is followed by the class name. The rules for identifiers must 
be considered while naming a class.

A class definition can include the following −

Fields − A field is any variable declared in a class. Fields represent data 
pertaining to objects.

Setters and Getters − Allows the program to initialize and retrieve the values 
of the fields of a class. A default getter/ setter is associated with every class. 
However, the default ones can be overridden by explicitly defining a setter/ getter.

Constructors − responsible for allocating memory for the objects of the class.

Functions − Functions represent actions an object can take. They are also at times 
referred to as methods.

These components put together are termed as the data members of the class.

*/

//Declaring a class
class Car {
  // field
  String engine = "E1001";

  // function
  void disp() {
    print(engine);
  }
}

//Accessing Attributes and Functions
//A class’s attributes and functions can be accessed through the object. Use the
//‘.’ dot notation (called as the period) to access the data members of a class.

void main() {
  Cycle c = Cycle();
  Auto a = Auto('Benz001');
  Benze b = Benze();
  Benze d = Benze.namedConst('nes005');
  c.disp();
  print(a);
  print(b);
  print(d);
  print(Volvo('helen'));
  Student s1 = Student();
  s1.studName = 'MARK';
  s1.studAge = 6;
  print(s1.studName);
  print(s1.studAge);
  var obj = Circle();
  obj.calArea();
  var objs = Leaf();
  objs.str = "hello";
  print(objs.str);
  Children e = Children();
  e.m1(12);
  StaticMem.num = 75;
  StaticMem.disp();
  Son f = Son();
  f.m1(12);
}

class Cycle {
  // field
  String engine = "E1001";

  // function
  void disp() {
    print(engine);
  }
}

//A constructor is a special function of the class that is responsible for
//initializing the variables of the class. Dart defines a constructor with the
//same name as that of the class. A constructor is a function and hence can be
//parameterized. However, unlike a function, constructors cannot have a return
//type. If you don’t declare a constructor, a default no-argument constructor is
//provided for you.

class Auto {
  Auto(String engine) {
    print(engine);
  }
}

//Dart provides named constructors to enable a class define multiple constructors.
//The syntax of named constructors is as given below −
//Class_name.constructor_name(param_list)

class Benze {
  Benze() {
    print("Non-parameterized constructor invoked");
  }
  Benze.namedConst(String engine) {
    print("The engine is : $engine");
  }
}

//The this Keyword
//The this keyword refers to the current instance of the class. Here, the parameter
// name and the name of the class’s field are the same. Hence to avoid ambiguity,
//the class’s field is prefixed with the this keyword. The following example explains
//the same −
class Volvo {
  late String engine;
  Volvo(this.engine) {
    print("The engine is : $engine");
  }
}

//Getters and Setters
//Getters and Setters, also called as accessors and mutators, allow the program
//to initialize and retrieve the values of class fields respectively. Getters or
//accessors are defined using the get keyword. Setters or mutators are defined
//using the set keyword.

//A default getter/setter is associated with every class. However, the default
//ones can be overridden by explicitly defining a setter/ getter. A getter has
//no parameters and returns a value, and the setter has one parameter and does not
//return a value.
class Student {
  late String name;
  late int age;

  String get studName {
    return name;
  }

  set studName(String name) => this.name = name;

  set studAge(int age) {
    this.age = age;
    if (age <= 5) {
      print("Age should be greater than 5");
    } else {
      print("Your older than 5 years old");
    }
  }

  int get studAge => age;
}

//Class Inheritance
//In the following example, we are declaring a class Shape. The class is extended
//by the Circle class. Since there is an inheritance relationship between the classes,
//the child class, i.e., the class Car gets an implicit access to its parent class data member.
class Shape {
  void calArea() {
    print("calling calc area defined in the Shape class");
  }
}

class Circle extends Shape {}

//multi-level
class Root {
  late String str;
}

class Child extends Root {}

class Leaf extends Child {}

//Class Inheritance and Method Overriding
//Method Overriding is a mechanism by which the child class redefines a method in
//its parent class.
class Parent {
  void m1(int a) {
    print("value of a $a");
  }
}

class Children extends Parent {
  @override
  void m1(int b) {
    print("value of b $b");
  }
}

//The static Keyword
//The static keyword can be applied to the data members of a class, i.e., fields
//and methods. A static variable retains its values till the program finishes
//execution. Static members are referenced by the class name.
class StaticMem {
  static var num;
  static disp() {
    print("#GFG the value of num is ${StaticMem.num}");
  }
}

//The super keyword
//The super keyword is used to refer to the immediate parent of a class. The keyword
//can be used to refer to the super class version of a variable, property, or method.
class Ancest {
  String msg = "message variable from the parent class";
  void m1(int a) {
    print("value of a $a");
  }
}

class Son extends Ancest {
  @override
  void m1(int b) {
    print("value of b $b");
    super.m1(13);
    print(super.msg);
  }
}
