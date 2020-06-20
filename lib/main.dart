import 'package:flutter/material.dart';

//Local imports
import 'package:flutterTest/theme/style.dart';
import 'package:flutterTest/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      initialRoute: '/',
      routes: routes,
    );
  }
}