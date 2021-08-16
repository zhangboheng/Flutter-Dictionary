// ignore_for_file: avoid_print

/*

A very commonly used collection in programming is an array. Dart represents 
arrays in the form of List objects. A List is simply an ordered group of objects. 
The dart:core library provides the List class that enables creation and 
manipulation of lists.

*/

void main() {
  List arr = List.filled(3, '');
  arr[0] = 12;
  arr[1] = 13;
  arr[2] = 11;
  print(arr);

  //or
  List lst = [12, 13, 11];
  print(lst);

  //or
  var cat = [];
  cat.add(13);
  cat.add(11);
  cat.add(12);
  print(cat);

  //List Properties
  //first: Returns the first element in the list.
  print(cat.first);

  //isEmpty: Returns true if the collection has no elements.
  print(cat.isEmpty);

  //isNotEmpty: Returns true if the collection has elements.
  print(cat.isNotEmpty);

  //length: Returns the size of the list.
  print(cat.length);

  //last: Returns the last element in the list.
  print(cat.last);

  //reversed: Returns an iterable object containing the lists values in the reverse order.
  print(cat.reversed);

  //single: Checks if the list has only one element and returns it.
  try {
    cat.single;
  } catch (e) {
    print(e);
  }

  //List Methods
  //add(): The List.add() function appends the specified value to the end of
  //the List and returns a modified List object.
  cat.add(1);
  print(cat);

  //Dart allows modifying the value of an item in a List.
  //In other words, one can re-write the value of list item.
  cat[0] = 1;
  print(cat);

  //remove(): The List.remove() function removes the first occurrence of the
  //specified item in the list. This function returns true if the specified value
  //is removed from the list.
  cat.remove(13);
  print(cat);

  //sort: Returns an iterable object containing the lists values in order.
  //Notice that sort() does not return a value. It sorts the list without creating 
  //a new list. If you want to sort and print in the same line, you can use method 
  //cascades:
  print(cat..sort());
}
