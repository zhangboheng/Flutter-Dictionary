// ignore_for_file: avoid_print

/*

At times, certain instructions require repeated execution. Loops are an ideal 
way to do the same. A loop represents a set of instructions that must be 
repeated. In a loop’s context, a repetition is termed as an iteration.

*/

void main() {
  //for loop
  var num = 5;
  var factorial = 1;

  for (var i = num; i >= 1; i--) {
    factorial *= i;
  }
  print(factorial);

  //for...in loop
  var obj = [12, 13, 14];

  for (var prop in obj) {
    print(prop);
  }

  //while loop
  var ins = 5;
  var factorials = 1;

  while (ins >= 1) {
    factorials = factorials * ins;
    ins--;
  }
  print("The factorial  is $factorials");

  //do...while loop
  var n = 10;
  do {
    print(n);
    n--;
  } while (n >= 0);
}
