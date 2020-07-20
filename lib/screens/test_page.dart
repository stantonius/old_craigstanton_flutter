import 'package:flutter/material.dart';
import '../components/directoryLayout.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Craig Stanton")), body: DirectoryLayout());
  }
}
