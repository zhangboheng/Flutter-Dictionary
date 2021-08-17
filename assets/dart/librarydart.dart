/*

A library in a programming language represents a collection of routines (set of 
programming instructions). Dart has a set of built-in libraries that are useful 
to store routines that are frequently used. A Dart library comprises of a set of 
classes, constants, functions, typedefs, properties, and exceptions.

Importing a library

Importing makes the components in a library available to the caller code. The import 
keyword is used to achieve the same. A dart file can have multiple import statements.

Built in Dart library URIs use the dart: scheme to refer to a library. Other libraries 
can use a file system path or the package: scheme to specify its URI. Libraries provided 
by a package manager such as the pub tool uses the package: scheme.

The syntax for importing a library in Dart is given below −

>> import 'URI'

If you want to use only part of a library, you can selectively import the library. 
The syntax for the same is given below −

import 'package: lib1/lib1.dart' show foo, bar;  
// Import only foo and bar. 

import 'package: mylib/mylib.dart' hide foo;  
// Import all names except foo

You can go to https://pub.dev/ to search Dart library.

//Creating Custom Libraries
Dart also allows you to use your own code as a library. Creating a custom library 
involves the following steps −

1.Declaring a Library
To explicitly declare a library, use the library statement. The syntax for declaring 
a library is as given below −

>> library library_name  // library contents go here 

2.Associating a Library
>> import 'library_name'

*/