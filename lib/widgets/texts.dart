import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class TextsWidget extends StatelessWidget {
  TextsWidget({this.color = kWhitecolor, this.fontsize = 16.0, this.fontweight, required this.text});
  String text;
  FontWeight ? fontweight;
  double fontsize;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontFamily: 'OpenSans',  fontWeight: fontweight, color: color, fontSize: fontsize),);
  }
}