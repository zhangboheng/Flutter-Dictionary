// ignore_for_file: avoid_print

/*

Functions are the building blocks of readable, maintainable, and reusable code. 
A function is a set of statements to perform a specific task. Functions organize 
the program into logical blocks of code. Once defined, functions may be called 
to access code. This makes the code reusable. Moreover, functions make it easy 
to read and maintain the program’s code.

A function declaration tells the compiler about a function's name, return type, 
and parameters. A function definition provides the actual body of the function.

*/

//Define a function: A function definition specifies what and how a specific
//task would be done. Before using a function, it must be defined.
test() {
  print("function called");
  return 'Hello World';
}

paraTest(int a, String text) {
  print(a);
  print(text);
}

//To specify optional positional parameters, use square [] brackets.

testParam(n1, [s1]) {
  print(n1);
  print(s1);
}

//Unlike positional parameters, the parameters’ name must be specified while the
//value is being passed. Curly brace {} can be used to specify optional named
//parameters.

testOther(n1, {s1, s2}) {
  print(n1);
  print(s1);
}

//Function parameters can also be assigned values by default. However, such
//parameters can also be explicitly passed values.

void isTest(n1, {s1 = 12}) {
  print(n1);
  print(s1);
}

//Recursive Dart Functions： Recursion is a technique for iterating over an
//operation by having a function call to itself repeatedly until it arrives at a
//result. Recursion is best applied when you need to call the same function
//repeatedly with different parameters from within a loop.
factorial(number) {
  if (number <= 0) {
    // termination case
    return 1;
  } else {
    return (number * factorial(number - 1));
    // function invokes itself
  }
}

//Lambda Functions： Lambda functions are a concise mechanism to represent functions.
//These functions are also called as Arrow functions.
printMsg() => print("hello");

void main() {
  test();
  printMsg();
  testParam(123);
  paraTest(25, 'hello');
  testOther(123);
  print(factorial(6));
  testOther(123, s1: 'hello');
  testOther(123, s2: 'hello', s1: 'world');
}
