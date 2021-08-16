// ignore_for_file: avoid_print

/*

An enumeration is used for defining named constant values. An enumerated type 
is declared using the enum keyword.

*/

enum Status { 
   none, 
   running, 
   stopped, 
   paused 
}  
void main() { 
   print(Status.values); 
   for (var v in Status.values) {
     print('value: $v, index: ${v.index}');
   }
   print('running: ${Status.running}, ${Status.running.index}'); 
   print('running index: ${Status.values[1]}'); 
}