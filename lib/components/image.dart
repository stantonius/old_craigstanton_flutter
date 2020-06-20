import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';


class CustImage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Center(child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: 'https://picsum.photos/250?image=9',
              )
    );
  }
}