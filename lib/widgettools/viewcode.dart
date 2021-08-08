// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'readfiles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Viewcode extends StatefulWidget {
  final String title;
  final String content;
  final String path;
  final int index;
  const Viewcode(this.index, this.title, this.content, this.path);

  @override
  _ViewcodeState createState() => _ViewcodeState();
}

class _ViewcodeState extends State<Viewcode> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(2),
      child: Column(children: [
        ListTile(
            leading: widget.index == 0
                ? Icon(Icons.code_off_outlined)
                : Icon(Icons.code),
            title: Text(
              widget.title,
              style: GoogleFonts.acme(
                  textStyle: Theme.of(context).textTheme.headline6),
            ),
            trailing: IconButton(
              icon: Icon(
                  _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              onPressed: () {
                setState(() {
                  _showContent = !_showContent;
                });
              },
            ),
            onTap: () async {
              var path = widget.path;
              if (path.isEmpty) {
                return;
              } else {
                Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Readfiles(widget.title, path),
                  ),
                );
              }
            }),
        _showContent
            ? Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: SelectableText(
                  widget.content,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    height: 2.5,
                  ),
                ),
              )
            : Container()
      ]),
    );
  }
}
