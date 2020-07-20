import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import './directoryLayout.dart';

class IntroText extends StatefulWidget {
  @override
  _IntroTextState createState() => _IntroTextState();
}

class _IntroTextState extends State<IntroText> {
  AlignmentGeometry _alignment = Alignment.centerLeft;
  bool _displayDirectory = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Column(children: [
          Expanded(
              child: Stack(children: [
            Visibility(
                visible: _displayDirectory,
                child: Container(child: DirectoryLayout(), color: Colors.blue),
                maintainSize: false),
            AnimatedAlign(
                alignment: _alignment,
                duration: Duration(milliseconds: 2000),
                curve: Curves.fastOutSlowIn,
                child: Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: TypewriterAnimatedTextKit(
                    totalRepeatCount: 1,
                    speed: Duration(milliseconds: 150),
                    text: ["Welcome", "to", "Craig's website"],
                    textStyle: GoogleFonts.specialElite(
                        textStyle:
                            TextStyle(fontSize: 70.0, color: Colors.white)),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: false,
                    onFinished: () {
                      setState(() {
                        _alignment = _alignment == Alignment.centerLeft
                            ? Alignment.topLeft
                            : Alignment.centerLeft;

                        _displayDirectory = !_displayDirectory;
                      });
                    },
                  ),
                ))
          ]))
        ]));
  }
}

/*
Container(
      color: Colors.red,
      child: Column(
        children: [
          Expanded(
            child: AnimatedAlign(
                alignment: _alignment,
                duration: Duration(milliseconds: 2000),
                curve: Curves.fastOutSlowIn,
                child: Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: TypewriterAnimatedTextKit(
                    totalRepeatCount: 1,
                    speed: Duration(milliseconds: 150),
                    text: ["Welcome", "to", "Craig's website"],
                    textStyle: GoogleFonts.specialElite(
                        textStyle:
                            TextStyle(fontSize: 70.0, color: Colors.white)),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: false,
                    onFinished: () {
                      setState(() {
                        _alignment = _alignment == Alignment.centerLeft
                            ? Alignment.topLeft
                            : Alignment.centerLeft;

                        _displayDirectory = !_displayDirectory;
                      });
                    },
                  ),
                )),
          ),
          Visibility(
              visible: _displayDirectory,
              child: Expanded(
                  child:
                      Container(child: DirectoryLayout(), color: Colors.blue),
                  flex: 3),
              maintainSize: false)
        ],
      ),
    );
  */
