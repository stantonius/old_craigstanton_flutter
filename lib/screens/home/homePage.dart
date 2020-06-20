import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pedro's Tomatoes")),
      body: Container(
          child: Row(children: [
        Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: SizedBox(
                      width: 500,
                      child: TypewriterAnimatedTextKit(
                        speed: Duration(milliseconds: 200),
                        pause: Duration(milliseconds: 1000),
                        text: ["Ready to work?"],
                        textStyle:
                            TextStyle(fontSize: 70.0, color: Colors.white),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: false,
                      )))
            ]))
      ])),
    );
  }
}
