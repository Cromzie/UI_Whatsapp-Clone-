import 'package:flutter/material.dart';
import './listtile.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [ColoredBox(color: Colors.black87),  ListTileWidget(), ListTileWidget(),ListTileWidget() ]);
  }
}