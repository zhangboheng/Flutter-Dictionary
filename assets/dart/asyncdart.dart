// ignore_for_file: avoid_print

/*

An asynchronous operation executes in a thread, separate from the main application 
thread. When an application calls a method to perform an operation asynchronously, 
the application can continue executing while the asynchronous method performs its task.

In computing, we say something is synchronous when it waits for an event to happen 
before continuing. A disadvantage in this approach is that if a part of the code 
takes too long to execute, the subsequent blocks, though unrelated, will be blocked 
from executing. Consider a webserver that must respond to multiple requests for a resource.

A synchronous execution model will block every other user’s request till it finishes 
processing the current request. In such a case, like that of a web server, every 
request must be independent of the others. This means, the webserver should not 
wait for the current request to finish executing before it responds to request 
from other users.

*/

//Example
import 'dart:io';

void main() {
  print("Enter your name :");

  // prompt for user input
  String? name = stdin.readLineSync();

  // this is a synchronous method that reads user input
  print("Hello Mr. $name");
  print("End of main");
}

//Dart Future
//The Dart community defines a Future as "a means for getting a value sometime in 
//the future." Simply put, Future objects are a mechanism to represent values returned 
//by an expression whose execution will complete at a later point in time. 
//Several of Dart’s built-in classes return a Future when an asynchronous method 
//is called.
//Dart is a single-threaded programming language. If any code blocks the thread 
//of execution (for example, by waiting for a time-consuming operation or blocking on I/O), 
//the program effectively freezes.
//Asynchronous operations let your program run without getting blocked. Dart uses 
//Future objects to represent asynchronous operations.