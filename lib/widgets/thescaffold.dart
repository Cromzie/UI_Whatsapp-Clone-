import 'package:awhatsappui/constants.dart';
import 'package:awhatsappui/widgets/appbar.dart';
// import 'package:awhatsappui/widgets/images.dart';
// import 'package:awhatsappui/widgets/listtile.dart';
// import 'package:awhatsappui/widgets/tabbar.dart';
import 'package:flutter/material.dart';
// import './tabbarview.dart';
import './texts.dart';
import './popmenu.dart';
import './tabbar.dart';
import './tabbarview.dart';

class TheScaffoldWidget extends StatefulWidget {
  const TheScaffoldWidget({ Key? key }) : super(key: key);

  @override
  _TheScaffoldWidgetState createState() => _TheScaffoldWidgetState();
}

class _TheScaffoldWidgetState extends State<TheScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(
      child: DefaultTabController(length: 4, initialIndex: 1, child: 
      Scaffold(
          appBar: AppbarWidget(),
          body: TabBarViewWidget(),
          floatingActionButton: FloatingActionButton(onPressed: (){}, child:Icon(Icons.message_rounded, color: kWhitecolor,), 
          hoverColor: kIconscolor,
          splashColor: Colors.limeAccent,
          backgroundColor: kChatscolor,),
        ),
      ),
    );
  }
}