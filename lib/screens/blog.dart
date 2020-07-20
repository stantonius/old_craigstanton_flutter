import 'package:flutter/material.dart';
import '../components/directoryLayout.dart';

class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Craig Stanton")), body: DirectoryLayout());
  }
}
