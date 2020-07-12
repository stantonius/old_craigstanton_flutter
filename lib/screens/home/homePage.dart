import 'package:flutter/material.dart';
import 'package:craigstanton_flutter/components/IntroText.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Craig Stanton")),
      body: Container(child: Row(children: [IntroText()])),
    );
  }
}
