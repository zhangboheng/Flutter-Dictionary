// ignore_for_file: no_logic_in_create_state
import 'dart:math';
import '../widgettools/accordion.dart';
import 'package:flutter/material.dart';
import 'package:group_list_view/group_list_view.dart';

//Set Random Colors Value
Random random = new Random();
List _colorbox = [
  Color(0xFFFD9841),
  Color(0xFFF9D562),
  Color(0xFFFFDBB4),
  Color(0xFFEDB98A),
  Color(0xFFD08B5B),
  Color(0xFFAE5D29),
  Color(0xFF614335),
];
//Set Dart Catalogue
Map<String, List> _elements = {
  'Basic': [
    Accordion(
        'Variable[var, final, const, late]',
        'Use var if you expect a variable assignment to change during its lifetime:\nvar msg = "Hello world.";\nmsg = "Hello world again.";Use final if you expect a variable assignment to remain the same during its lifetime:\nfinal msg = "Hello world.";' +
            '\nNote that there is a fine distinction between final and const when it comes to objects. final does not necessarily make the object itself immutable, whereas const does:\nfinal fruit = ["apple", "pear", "orange"];' +
            '\nfruit.add("grape");\nfinal cars = const ["Honda", "Toyota", "Ford"];\nconst requires a constant assignment, whereas final will accept both:\nconst names = const ["John", "Jane", "Jack"];' +
            '\nAt last, Use late means Declaring a non-nullable variable that’s initialized after its declaration or Lazily initializing a variable.',
        'https://stackoverflow.com/questions/12416507/difference-between-var-and-dynamic-type-in-dart'),
    Accordion(
        'Built-in types[Numbers, Strings, Booleans, Lists, Sets, Maps, Runes, Symbols, Null]',
        'int num = 3;\ndouble dbs = 0.56;String str = \'Hello!\'\n',
        'https://api.flutter.dev/flutter/material/Icons-class.html'),
  ],
};

class DartScreen extends StatefulWidget {
  final String url;
  DartScreen(this.url);

  @override
  _MyImageScreen createState() => _MyImageScreen(url);
}

class _MyImageScreen extends State<DartScreen> {
  final String url;
  _MyImageScreen(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dart Learning'),
      ),
      body: GroupListView(
        sectionsCount: _elements.keys.toList().length,
        countOfItemInSection: (int section) {
          return _elements.values.toList()[section].length;
        },
        itemBuilder: _itemBuilder,
        groupHeaderBuilder: (BuildContext context, int section) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Text(
              _elements.keys.toList()[section],
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: _colorbox[random.nextInt(_colorbox.length)]),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 10),
        sectionSeparatorBuilder: (context, section) => SizedBox(height: 10),
      ),
    );
  }
}

Widget _itemBuilder(BuildContext context, IndexPath index) {
  var lst = _elements.values.toList()[index.section][index.index];
  return lst;
}
