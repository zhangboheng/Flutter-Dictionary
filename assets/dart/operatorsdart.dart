// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

void main() {
  //Arithmetic Operators
  //+, -, *, /, ~/, %, ++, --
  int num = 4;
  print(num / 2); //output 2;

  //Equality and Relational Operators
  //>, <, >=, <=, ==, !=
  int integer = 2;
  print(num > integer); //output true;

  //Type test Operators
  //is, is!
  print(num is int); //output ture;

  //Bitwise Operators
  //&, |, ^, ~, <<, >>
  print(num & integer); //output 0;

  //Assignment Operators
  //=, ??=, +=, -=, *=, /=
  print(num += 2); //output 6;

  //Logical Operators
  //&&, ||, !
  print(num > integer && num < integer); //output false

  //Conditional Expressions
  //condition ? expr1 : expr2
  print(num != 4 ? 1 : 2); //output 1

  //expr1 ?? expr2
  //If expr1 is non-null, returns its value; otherwise, evaluates and returns the value of expr2
  var a;
  var b = 12;
  var res = a ?? b;
  print(res); //output 12
}
