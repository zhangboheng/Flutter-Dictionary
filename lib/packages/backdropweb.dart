// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class BackdropWeb extends StatefulWidget {
  const BackdropWeb({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<BackdropWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('backdrop'),
        ),
        body: WidgetWithCodeView(
          child: Abutiful(),
          sourceFilePath: 'lib/backdrop.dart',
          codeLinkPrefix:
              'https://github.com/zhangboheng/Flutter-Dictionary/tree/main/assets/',
        ));
  }
}

class Abutiful extends StatelessWidget {
  const Abutiful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Backdrop Demo',
        debugShowCheckedModeBanner: false,
        home: BackdropScaffold(
          appBar: BackdropAppBar(
            title: Text("Backdrop Example"),
            actions: <Widget>[
              BackdropToggleButton(
                icon: AnimatedIcons.list_view,
              )
            ],
          ),
          backLayer: Center(
            child: Text("Back Layer"),
          ),
          subHeader: BackdropSubHeader(
            title: Text("Sub Header"),
          ),
          frontLayer: Center(
            child: Text("Front Layer"),
          ),
        ),
      );
}
