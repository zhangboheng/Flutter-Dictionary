// ignore_for_file: avoid_print

/*

Classes and utilities that supplement the collection support in dart:core.

*/

import 'dart:collection';

void main() {
  //DoubleLinkedQueue: Allows constant time add, remove-at-ends and peek operations.
  DoubleLinkedQueue arr = DoubleLinkedQueue();
  arr.add('h');
  arr.addAll(['a', 'b', 'c']);
  //Returns the first element.
  arr.first;
  //The hash code for this object.
  print(arr.hashCode);
  //Returns true if there are no elements in this collection.
  print(arr.isEmpty);
  //Returns false if there are no elements in this collection.
  print(arr.isNotEmpty);
  //Returns the last element.
  print(arr.last);
  //Returns the number of elements in this.
  print(arr.length);
  //A representation of the runtime type of the object.
  print(arr.runtimeType);
  //Checks that this iterable has only one element, and returns that element.
  print([arr.first].single);
  //Adds value at the beginning of the queue.
  arr.addFirst('3');
  print(arr);
  //Adds value at the end of the queue.
  arr.addLast('v');
  print(arr);
  //Checks whether any element of this iterable satisfies test.
  print(arr.any((x) => x == '3'));
  //Provides a view of this iterable as an iterable of R instances.
  print(arr.cast());
  //Removes all elements in the queue. The size of the queue becomes zero.
  print(arr.clear);
  //Whether the collection contains an element equal to element.
  print(arr.contains('3'));
  //Returns the indexth element.
  print(arr.elementAt(1));
  //Checks whether every element of this iterable satisfies test.
  print(arr.every((element) => element != ''));
  //Expands each element of this Iterable into zero or more elements.
  var pairs = [
    [1, 2],
    [3, 4]
  ];
  var flattened = pairs.expand((pair) => pair).toList();
  print(flattened);
  //Returns the first element that satisfies the given predicate test.
  print(arr.firstWhere((element) => element is String));
  //Converts each element to a String and concatenates the strings.
  print(arr.join(','));
  //Returns a new lazy Iterable with elements that are created by calling f on
  //each element of this Iterable in iteration order.
  print(arr.map((x) => x + '1'));
  //Reduces a collection to a single value by iteratively combining elements of
  //the collection using the provided function.
  print(arr.reduce((value, element) => value + element));
  //Creates a Set containing the same elements as this iterable.
  print(arr.toSet());
  //Removes and returns the first element of this queue.
  print(arr.removeFirst());
  //Removes and returns the last element of the queue.
  print(arr.removeLast());
  //Remove a single instance of value from the queue.
  print(arr.remove('3'));
  //Returns an Iterable that provides all but the first count elements.
  print(arr.skip(2));

  //HashMap: A hash-table based implementation of Map.
  HashMap sets = HashMap();
  sets['les'] = 'values';
  HashMap map = HashMap.from(
      sets); //Creates a HashMap that contains all key/value pairs of other.
  print(sets.length); //The number of key/value pairs in the map.
  print(sets.keys); //The keys of this.
  print(sets.values); //The values of this.
  print(map);
  //
}
