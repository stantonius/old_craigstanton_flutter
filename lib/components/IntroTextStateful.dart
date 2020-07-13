import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroText extends StatefulWidget {
  @override
  _IntroTextState createState() => _IntroTextState();
}

class _IntroTextState extends State<IntroText> {
  AlignmentGeometry _alignment = Alignment.centerLeft;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: AnimatedAlign(
      alignment: _alignment,
      duration: Duration(milliseconds: 2000),
      curve: Curves.fastOutSlowIn,
      child: Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: SizedBox(
            width: 500,
            child: TypewriterAnimatedTextKit(
              totalRepeatCount: 1,
              speed: Duration(milliseconds: 350),
              text: ["Welcome"],
              textStyle: GoogleFonts.specialElite(
                  textStyle: TextStyle(fontSize: 70.0, color: Colors.white)),
              displayFullTextOnTap: true,
              stopPauseOnTap: false,
              onFinished: () {
                setState(() {
                  _alignment = _alignment == Alignment.centerLeft
                      ? Alignment.topLeft
                      : Alignment.centerLeft;
                });
              },
            ),
          )),
    ));
  }
}
