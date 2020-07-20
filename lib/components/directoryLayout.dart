import 'package:flutter/material.dart';

class DirectoryLayoutAnimation extends StatefulWidget {
  DirectoryLayoutAnimation({Key key}) : super(key: key);

  @override
  _DirectoryLayoutAnimationState createState() =>
      _DirectoryLayoutAnimationState();
}

class _DirectoryLayoutAnimationState extends State<DirectoryLayoutAnimation>
    with SingleTickerProviderStateMixin {
//class DirectoryLayout extends StatelessWidget {

  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(end: Offset(0, -2), begin: Offset.zero)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      child: SlideTransition(
        position: _offsetAnimation,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    //color: Colors.blue,
                    child: Image(
                        image: AssetImage('assets/images/ai.png'),
                        height: 100)),
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: InkWell(
                    hoverColor: Colors.red,
                    onTap: () {
                      Navigator.pushNamed(context, '/blog');
                    },
                    child: Text('Blog',
                        style: Theme.of(context).textTheme.headline2,
                        textAlign: TextAlign.right),
                  )),
              Container(
                  child: Text('Experiments',
                      style: Theme.of(context).textTheme.headline2)),
              Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text('About',
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.right))
            ]),
          ],
        ),
      ),
    );
  }
}

class DirectoryLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DirectoryLayoutAnimation(),
    );
  }
}
