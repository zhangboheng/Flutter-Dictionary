// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;
  final String link;
  const Accordion(this.title, this.content, this.link);

  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(2),
      child: Column(children: [
        ListTile(
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
              var link = widget.link;
              if (await canLaunch(link)) {
                await launch(link, forceSafariVC: false);
              } else {
                throw 'Could not launch $link';
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
