import 'package:awhatsappui/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import './texts.dart';
import './popmenu.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: TextsWidget(
        text: 'WhatsApp',
        fontweight: FontWeight.bold,
      ),
      actions: [
        Name.search, 
        ThemeWidget(), 
        PopWidget(),
      ],
      bottom: TabbarWidget(),
    );
  }
}
