import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  ImageWidget({required this.imagename, this.jpg = '.jpg'});
  String imagename;
  String jpg;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage('assets/$imagename$jpg'),
    );
  }
}
