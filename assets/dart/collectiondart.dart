// ignore_for_file: avoid_print

/*

Dart, unlike other programming languages, doesn’t support arrays. Dart collections 
can be used to replicate data structures like an array. The dart:core library and 
other classes enable Collection support in Dart scripts.

Dart collections can be basically classified as List, Set, Maps and Queue.

The Iterator class from the dart:core library enables easy collection traversal. 
Every collection has an iterator property. This property returns an iterator that 
points to the objects in the collection.

*/

import 'dart:collection';

void main() {
  Queue numQ = Queue();
  numQ.addAll([100, 200, 300]);
  Iterator i = numQ.iterator;

  while (i.moveNext()) {
    print(i.current);
  }

  //Generic List
  List<String> logTypes = <String>[];
  logTypes.add("WARNING");
  logTypes.add("ERROR");
  logTypes.add("INFO");

  // iterating across list
  for (String type in logTypes) {
    print(type);
  }

  //Generic Set
  Set<int> numberSet = <int>{};
  numberSet.add(100);
  numberSet.add(20);
  numberSet.add(5);
  numberSet.add(60);
  numberSet.add(70);
  print("Default implementation  :${numberSet.runtimeType}");

  for (var no in numberSet) {
    print(no);
  }

  //Generic Queue
  Queue<int> queue = Queue<int>();
  print("Default implementation ${queue.runtimeType}");
  queue.addLast(10);
  queue.addLast(20);
  queue.addLast(30);
  queue.addLast(40);
  queue.removeFirst();

  for (int no in queue) {
    print(no);
  }

  //Generic Map
  Map<String, String> m = {'name': 'Tom', 'Id': 'E1001'};
  print('Map :$m');
}
