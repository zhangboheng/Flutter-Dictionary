// ignore_for_file: avoid_print

/*

The Map object is a simple key/value pair. Keys and values in a map may be of 
any type. A Map is a dynamic collection. In other words, Maps can grow and 
shrink at runtime.

*/

void main() {
  //To declare a Map using a Map constructor, we have two steps. First, declare
  //the map and second, initialize the map.
  var identifier = {};
  identifier['cat'] = 2;
  print(identifier);

  //Map Literal
  var details = {'Usrname': 'tom', 'Password': 'pass@123'};
  print(details);

  //Adding Values to Map Literals at Runtime
  var detail = {'Usrname': 'tom', 'Password': 'pass@123'};
  detail['Uid'] = 'U1oo1';
  print(detail);

  //Properties
  //keys: Returns an iterable object representing keys
  print(detail.keys);

  //values: Returns an iterable object representing values
  print(detail.values);

  //length: Returns the size of the Map
  print(detail.length);

  //isEmpty: Returns true if the Map is an empty Map
  print(detail.isEmpty);

  //isNotEmpty: Returns true if the Map is an empty Map
  print(detail.isNotEmpty);

  //Functions
  //addAll(): The Map.addAll() function adds all key-value pairs of other to this map.
  Map m = {'name': 'Tom', 'Id': 'E1001'};
  print('Map :$m');

  m.addAll({'dept': 'HR', 'email': 'tom@xyz.com'});
  print('Map after adding  entries :$m');

  //clean(): Removes all pairs from the map.
  Map n = {'name': 'Tom', 'Id': 'E1001'};
  print('Map :$n');

  n.clear();
  print('Map after invoking clear()  :$n');

  //remove(): Removes key and its associated value, if present, from the map.
  //The function also returns the value associated with the key.
  print(n.remove('name'));

  //forEach(): Applies f to each key-value pair of the map.
  var usrMap = {"name": "Tom", 'Email': 'tom@xyz.com'};
  usrMap.forEach((k, v) => print('$k: $v'));
}
