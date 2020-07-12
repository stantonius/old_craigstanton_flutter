import 'package:flutter/material.dart';

//Local imports
import 'package:craigstanton_flutter/theme/style.dart';
import 'package:craigstanton_flutter/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Craig Stanton',
      theme: appTheme(),
      initialRoute: '/',
      routes: routes,
    );
  }
}
