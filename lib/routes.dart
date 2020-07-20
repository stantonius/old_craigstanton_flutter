import 'package:flutter/widgets.dart';
import 'package:craigstanton_flutter/screens/home/homePage.dart';
import './screens/test_page.dart';
import './screens/blog.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => HomePage(),
  "/test": (BuildContext context) => TestPage(),
  "/blog": (BuildContext context) => Blog(),
};
