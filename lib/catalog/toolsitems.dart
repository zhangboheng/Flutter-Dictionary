// ignore_for_file: no_logic_in_create_state
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class ToolsScreen extends StatefulWidget {
  final String url;
  ToolsScreen(this.url);

  @override
  _MyImageScreen createState() => _MyImageScreen(url);
}

class _MyImageScreen extends State<ToolsScreen> {
  final String url;
  _MyImageScreen(this.url);
  @override
  Widget build(BuildContext context) {
    final List<Color> colors = <Color>[Colors.red, Colors.blue, Colors.green];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Developer Tools'),
      ),
      body: TikTokStyleFullPageScroller(
        contentSize: colors.length,
        swipePositionThreshold: 0.2,
        // ^ the fraction of the screen needed to scroll
        swipeVelocityThreshold: 2000,
        // ^ the velocity threshold for smaller scrolls
        animationDuration: const Duration(milliseconds: 300),
        // ^ how long the animation will take
        builder: (BuildContext context, int index) {
          return Align(
            alignment: Alignment.center,
            child: FlipCard(
              alignment: Alignment.center,
              direction: FlipDirection.HORIZONTAL, // default
              front: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: colors[index],
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: AssetImage(
                              url,
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 3,
                                offset: Offset(0, 6),
                                color: Colors.black38)
                          ]),
                    ),
                  ]),
              back: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: colors[index],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      image: AssetImage(
                        url,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 6),
                          color: Colors.black38)
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
