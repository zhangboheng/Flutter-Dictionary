// ignore_for_file: avoid_print

/*

File, socket, HTTP, and other I/O support for non-web applications.

This library allows you to work with files, directories, sockets, processes, HTTP servers 
and clients, and more. Many operations related to input and output are asynchronous and 
are handled using Futures or Streams, both of which are defined in the dart:async library.

*/

import 'dart:io';
import 'dart:convert';
import 'dart:async';

Future<void> main() async {
  File myFile = File('assets/test/myfile.txt');
  //Change file name
  myFile.rename('assets/test/myfile.txt').then((_) => print('file renamed'));

  //Read file example 1
  myFile.readAsString().then((String contents) {
    print(contents);
  });

  //Read file example 2
  Stream<String> lines = myFile
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(const LineSplitter()); // Convert stream to individual lines.
  try {
    await for (String line in lines) {
      print(line);
    }
    print('File is now closed.');
  } catch (e) {
    print('Error: $e');
  }

  //Write to a file example 1
  const filename = 'assets/test/file.txt';
  var file = await File(filename).writeAsString('some content');
  print(file);

  //Write to a file example 2
  var text = File('assets/test/file.txt');
  var sink = text.openWrite();
  sink.write('FILE ACCESSED ${DateTime.now()}\n');
  sink.close();

  //Get file length
  var length = await myFile.length();
  print(length);

  //Properties
  //absolute: A File with the absolute path of path.

  //hashCode: The hash code for this object.
  print(text.hashCode);

  //isAbsolute: Whether this object's path is absolute.
  print(text.isAbsolute);

  //parent: The parent directory of this entity.
  print(text.parent);

  //path: Get the path of the file.
  print(text.path);

    //uri: A Uri representing the file system entity's location.
  print(text.uri);
}
