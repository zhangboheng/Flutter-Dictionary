// ignore_for_file: no_logic_in_create_state, prefer_const_constructors, use_key_in_widget_constructors
import "dart:math";
import '../widgettools/flashcards.dart';
import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class ToolsScreen extends StatefulWidget {
  final String url;
  const ToolsScreen(this.url);

  @override
  _MyImageScreen createState() => _MyImageScreen(url);
}

class _MyImageScreen extends State<ToolsScreen> {
  final String url;
  _MyImageScreen(this.url);
  @override
  Widget build(BuildContext context) {
    final List fore = [
      flashcards(
          'DevBook',
          'assets/images/devbooklogo.jpg',
          5,
          'Devbook is a search engine for developers that helps them to find the resources they need and answer their questions faster.',
          'https://usedevbook.com/'),
      flashcards(
          'Stackoverflow',
          'assets/images/stackoverflowlogo.jpg',
          5,
          'Stack Overflow is the largest, most trusted online community for developers to learn, share​ ​their programming ​knowledge, and build their careers.',
          'https://stackoverflow.com/questions'),
      flashcards(
          'W3schools',
          'assets/images/w3schoolslogo.jpg',
          4.5,
          'W3Schools is a freemium educational website for learning coding online. Created in 1998, its name is derived from the World Wide Web.',
          'https://www.w3schools.com/'),
      flashcards(
          'Github',
          'assets/images/githublogo.jpg',
          5,
          'GitHub is where over 65 million developers shape the future of software, together.',
          'https://www.github.com/'),
    ];

    return Scaffold(
      body: TikTokStyleFullPageScroller(
        contentSize: fore.length,
        swipePositionThreshold: 0.2,
        // ^ the fraction of the screen needed to scroll
        swipeVelocityThreshold: 2000,
        // ^ the velocity threshold for smaller scrolls
        animationDuration: const Duration(milliseconds: 200),
        // ^ how long the animation will take
        builder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            child: Center(
              child: shuffle(fore)[0],
            ),
            decoration: BoxDecoration(
              color: randomColor(),
              image: DecorationImage(
                image: AssetImage(url),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.dstIn),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}

//Rondom list sort
List shuffle(List items) {
  var random = Random();

  // Go through all elements.
  for (var i = items.length - 1; i > 0; i--) {
    // Pick a pseudorandom number according to the list length
    var n = random.nextInt(i + 1);

    var temp = items[i];
    items[i] = items[n];
    items[n] = temp;
  }

  return items;
}

Color randomColor() {
  var _random = Random();
  final _randomColor = Color.fromARGB(_random.nextInt(256),
      _random.nextInt(256), _random.nextInt(256), _random.nextInt(256));
  return _randomColor;
}
