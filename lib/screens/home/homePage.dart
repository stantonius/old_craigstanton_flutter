import 'package:flutter/material.dart';
import 'package:craigstanton_flutter/components/IntroTextStateful.dart';
import '../../components/directoryLayout.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Craig Stanton")),
      body: Container(
          child:
              Expanded(child: Row(children: [IntroText(), DirectoryLayout()]))),
    );
  }
}
