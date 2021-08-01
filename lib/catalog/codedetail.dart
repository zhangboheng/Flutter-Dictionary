// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../packages/introduce.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCard extends StatefulWidget {
  final String title;
  final String content;
  const DetailCard(this.title, this.content);

  @override
  _DetailCardState createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
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
            onTap: () => {
                  if (widget.title == 'url_launcher')
                    {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LauncherWeb()))
                    }
                  else if (widget.title == 'flutter_markdown')
                    {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MarkdownWeb()))
                    }
                }),
        _showContent
            ? Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Text(widget.content),
              )
            : Container()
      ]),
    );
  }
}
