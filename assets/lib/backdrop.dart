import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

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
