// Theme for entire app

import 'package:flutter/material.dart';

ThemeData appTheme(context) {
  return ThemeData(
      primarySwatch: Colors.red,
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.black,
      // This makes the visual density adapt to the platform that you run
      // the app on. For desktop platforms, the controls will be smaller and
      // closer together (more dense) than on mobile platforms.
      visualDensity: VisualDensity.adaptivePlatformDensity);
}
