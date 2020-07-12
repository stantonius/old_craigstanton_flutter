import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class IntroText extends StatefulWidget {
  @override
  _IntroTextState createState() => _IntroTextState();
}

class _IntroTextState extends State<IntroText> {
  double height = 200;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: (Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedAlign(
              child: Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: SizedBox(
                    width: 500,
                    child: TypewriterAnimatedTextKit(
                      totalRepeatCount: 1,
                      speed: Duration(milliseconds: 350),
                      pause: Duration(milliseconds: 1000),
                      text: ["Welcome"],
                      textStyle: TextStyle(fontSize: 70.0, color: Colors.white),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: false,
                    ),
                  )),
            )
          ])),
    );
  }
}
