/*
import 'package:flutter/material.dart';
import 'dart:async';

// First need to create the animation steps - use stateless widget for this
class StaggerAnimation extends StatelessWidget {
   
  StaggerAnimation({ Key key, this.controller }) :

  // Below are all of the subsequent transitions
  // Note that the Interval() parameter controls the percent each transition
  // takes from the duration specified later

  opacity = Tween<double>(
    begin: 0.0,
    end: 1.0,
  ).animate(
    CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.0, 0.100,
        curve: Curves.ease
      )
    )
  ))
}

class MainDirectory extends StatefulWidget {
  MainDirectory({Key key}) : super(key: key);

  @override
  _MainDirectoryState createState() => _MainDirectoryState();
}

class _MainDirectoryState extends State<MainDirectory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
*/
