// ignore_for_file: avoid_print

/*

Concurrency is the execution of several instruction sequences at the same time. 
It involves performing more than one task simultaneously.

Dart uses Isolates as a tool for doing works in parallel. The dart:isolate package 
is Dart’s solution to taking single-threaded Dart code and allowing the application 
to make greater use of the hard-ware available.

Isolates, as the name suggests, are isolated units of running code. The only way 
to send data between them is by passing messages, like the way you pass messages 
between the client and the server. An isolate helps the program to take advantage 
of multicore microprocessors out of the box.

Doing complex computational work asynchronously is important to ensure responsiveness 
of applications. Dart Future is a mechanism for retrieving the value of an asynchronous 
task after it has completed, while Dart Isolates are a tool for abstracting parallelism 
and implementing it on a practical high-level basis.

*/

import 'dart:isolate';  
void foo(var message){ 
   print('execution from foo ... the message is :$message'); 
}  
void main(){ 
   Isolate.spawn(foo,'Hello!!'); 
   Isolate.spawn(foo,'Greetings!!'); 
   Isolate.spawn(foo,'Welcome!!'); 
   
   print('execution from main1'); 
   print('execution from main2'); 
   print('execution from main3'); 
}
