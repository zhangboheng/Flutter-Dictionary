// ignore_for_file: avoid_print

/*

The String data type represents a sequence of characters. A Dart string is a
sequence of UTF 16 code units.

String values in Dart can be represented using either single or double or triple q
uotes. Single line strings are represented using single or double quotes. 
Triple quotes are used to represent multi-line strings.

*/
void main() {
  String str1 = 'this is a single line string';
  String str2 = "this is a single line string";
  String str3 = '''this is a multiline line string''';
  String str4 = """this is a multiline line string""";

  print(str1);
  print(str2);
  print(str3);
  print(str4);

  //String Interpolation
  //The process of creating a new string by appending a value to a static string
  //is termed as concatenation or interpolation. In other words, it is the
  //process of adding a string to another string.
  String str5 = "hello";
  String str6 = "world";
  String res = str6 + str5;

  print("The concatenated string : $res");

  //String Properties
  //codeUnits: Returns an unmodifiable list of the UTF-16 code units of this string.
  String str = "Hello ";
  print(str.codeUnits);

  //isEmpty: Returns true if this string is empty.
  print(str.isEmpty);

  //isNotEmpty: Returns true if this string is not empty.
  print(str.isNotEmpty);

  //length: The length of the string.
  print(str.length);

  //Methods to Manipulate Strings
  //toLowerCase: Converts all characters in this string to lower case.
  print(str.toLowerCase());

  //toUpperCase: Converts all characters in this string to upper case.
  print(str.toUpperCase());

  //trim: Returns the string without any leading and trailing whitespace.
  print(str.trim());

  //compareTo: Compares this object to another.
  String str7 = "A";
  String str8 = "A";
  String str9 = "B";

  print("str7.compareTo(str7): ${str7.compareTo(str7)}");
  print("str7.compareTo(str9): ${str7.compareTo(str9)}");
  print("str9.compareTo(str8): ${str9.compareTo(str8)}");

  //replaceAll: Replaces all substrings that match the specified pattern with
  //a given value.
  print(str1.replaceAll('this', 'This'));

  //split: Splits the string at matches of the specified delimiter and returns
  //a list of substrings.
  print(str1.split(' '));

  //substring: Returns the substring of this string that extends from startIndex,
  //inclusive, to endIndex, exclusive.
  print(str1.substring(5));

  //toString: Returns a string representation of an object.
  print(1.toString());

  //codeUnitAt: Returns the 16-bit UTF-16 code unit at the given index.
  var move = "Good Day";
  print("Code Unit of index 0 (G): ${move.codeUnitAt(0)}");

  //indexOf: Returns the position of the first match of pattern in this string,
  //starting at start
  print(move.indexOf('G'));

  //lastIndexOf: The starting position of the last match pattern in this string.
  print(move.indexOf('o'));
}
