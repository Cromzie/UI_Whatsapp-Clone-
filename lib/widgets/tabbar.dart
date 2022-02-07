import 'package:awhatsappui/widgets/container.dart';
import 'package:flutter/material.dart';
import './texts.dart';
import '../constants.dart';


class TabbarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(0);
  @override
  Widget build(BuildContext context) {
    return TabBar(
          physics: BouncingScrollPhysics(),
          labelPadding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width / 10).copyWith(left: 0),
          isScrollable: true,
          indicatorColor: kWhitecolor,
          indicatorWeight: 3.0,
          indicatorPadding: EdgeInsets.only(
            right: 20.0,
          ),
          tabs: [
            Tab(
              child: Name.camera,
            ),
            Tab(
              child: Row(
                children: [
                  TextsWidget(text: 'CHATS  '),
                  ContainerWidget(),
                ],
              ),
            ),
            Tab(child: TextsWidget(text: 'STATUS')),
            Tab(
                icon: TextsWidget(text: 'CALLS'),
                ),
          ]);
  }
}