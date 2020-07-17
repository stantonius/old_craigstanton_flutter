import 'package:flutter/material.dart';

class DirectoryLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: FractionallySizedBox(
        widthFactor: 0.7,
        child: Stack(
          children: [
            Container(
                child: Image(
              image: AssetImage('assets/images/ai.png'),
            )),
            Column(children: [
              Container(
                  child: Text('Blog', style: TextStyle(color: Colors.white))),
              Container(
                  child: Text('Experiments',
                      style: TextStyle(color: Colors.white))),
              Container(
                  child: Text('About', style: TextStyle(color: Colors.white)))
            ])
          ],
        ),
      ),
    );
  }
}
