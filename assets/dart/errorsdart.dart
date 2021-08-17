// ignore_for_file: avoid_print

/*

An exception (or exceptional event) is a problem that arises during the execution 
of a program. When an Exception occurs the normal flow of the program is disrupted 
and the program/Application terminates abnormally.

Errors List:

>> DeferredLoadException: Thrown when a deferred library fails to load.

>> FormatException: Exception thrown when a string or some other data does not 
have an expected format and cannot be parsed or processed.

>> IntegerDivisionByZeroException: Thrown when a number is divided by zero.

>> IOException: Base class for all Inupt-Output related exceptions.

>> IsolateSpawnException: Thrown when an isolate cannot be created.

>> Timeout: Thrown when a scheduled timeout happens while waiting for an async result.

//The try / on / catch Blocks
The try block embeds code that might possibly result in an exception. The on block 
is used when the exception type needs to be specified. The catch block is used when 
the handler needs the exception object.

The try block must be followed by either exactly one on / catch block or one finally 
block (or one of both). When an exception occurs in the try block, the control is 
transferred to the catch.

The syntax for handling an exception is as given below −

try { 
   // code that might throw an exception 
}  
on Exception1 { 
   // code for handling exception 
}  
catch Exception2 { 
   // code for handling exception 
} 

*/

main() {
  int x = 12;
  int y = 0;

  try {
    int res = x ~/ y;
    print(res);
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero');
  }

  //Using the catch
  try {
    int res = x ~/ y;
    print(res);
  } catch (e) {
    print(e);
  }

  //on…catch
  try {
    int res = x ~/ y;
    print(res);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  }

  //The Finally Block
  //The finally block includes code that should be executed irrespective of an
  //exception’s occurrence. The optional finally block executes unconditionally
  //after try/on/catch.
  try {
    int res = x ~/ y;
    print(res);
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero');
  } finally {
    print('Finally block executed');
  }

  //Throwing an Exception
  //The throw keyword is used to explicitly raise an exception. A raised exception
  //should be handled to prevent the program from exiting abruptly.
  try {
    testAge(-2);
  } catch (e) {
    print('Age cannot be negative');
  }
}

void testAge(int age) {
  if (age < 0) {
    throw const FormatException();
  }
}
