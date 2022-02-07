import 'package:flutter/material.dart';
import './texts.dart';
import '../constants.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: kWhitecolor
          ),
          child: Center(child: TextsWidget(text: '32', color: kChatscolor, fontweight: FontWeight.bold, fontsize: 12.0,)), //try replace 32 with number of list tiles
        );
  }
}