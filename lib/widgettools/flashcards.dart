// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class flashcards extends StatefulWidget {
  final String names;
  final String path;
  final double ratings;
  final String paras;
  final String link;
  const flashcards(this.names, this.path, this.ratings, this.paras, this.link);

  @override
  _flashcardsState createState() => _flashcardsState();
}

class _flashcardsState extends State<flashcards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
          ),
          Text(
            widget.names,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.04,
                color: Colors.white),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          ),
          ClipOval(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.height * 0.2,
              color: Colors.grey.shade200,
              child: Image.asset(
                widget.path,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          ),
          RatingBar.builder(
            initialRating: widget.ratings,
            minRating: widget.ratings,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: MediaQuery.of(context).size.height * 0.04,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              return;
            },
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          ),
          SizedBox(
            width: 200,
            child: Text(
              widget.paras,
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          ),
          IconButton(
            icon: Icon(Icons.travel_explore_outlined),
            iconSize: 48.0,
            color: Colors.white,
            hoverColor: Colors.blue,
            tooltip: 'Try It',
            onPressed: () async {
              var link = widget.link;
              if (await canLaunch(link)) {
                await launch(link, forceSafariVC: false);
              } else {
                throw 'Could not launch $link';
              }
            },
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white),
        boxShadow: const [
          BoxShadow(
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 6),
              color: Colors.black38)
        ],
      ),
    );
  }
}
