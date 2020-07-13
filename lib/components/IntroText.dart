import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class IntroText extends StatelessWidget {
  static final placementTween =
      AlignmentTween(begin: Alignment.centerLeft, end: Alignment.topLeft);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TweenAnimationBuilder(
          tween: placementTween,
          duration: Duration(seconds: 2),
          builder: (BuildContext context, Alignment placement, Widget child) {
            return AnimatedAlign(
              alignment: placement,
              duration: Duration(milliseconds: 2),
              curve: Curves.elasticIn,
              child: Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: SizedBox(
                    width: 500,
                    child: TypewriterAnimatedTextKit(
                      totalRepeatCount: 1,
                      speed: Duration(milliseconds: 1000),
                      text: ["Welcome"],
                      textStyle: TextStyle(fontSize: 70.0, color: Colors.white),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: false,
                    ),
                  )),
            );
          }),
    );
  }
}
