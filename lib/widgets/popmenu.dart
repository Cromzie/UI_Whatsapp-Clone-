import 'package:awhatsappui/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import './texts.dart';
import '../constants.dart';
import './route.dart';

class PopWidget extends StatelessWidget {
  const PopWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context)=>[(PopupMenuItem(
      padding: EdgeInsets.only(left: 10.0),
      child: Container(
      color: kWhitecolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(onPressed: (){}, child: TextsWidget(text: 'New group', color: kBlackcolor, fontsize: 14.0,)),
          TextButton(onPressed: (){}, child:TextsWidget(text: 'New broadcast', color: kBlackcolor, fontsize: 14.0,)),
          TextButton(onPressed: (){}, child: TextsWidget(text: 'Linked Devices', color: kBlackcolor, fontsize: 14.0,)),
          TextButton(onPressed: (){}, child: TextsWidget(text: 'Starred messages', color: kBlackcolor, fontsize: 14.0,)),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => RouteWidget(),));
          }, child: TextsWidget(text: 'Settings', color: kBlackcolor, fontsize: 14.0,)),
        ],
      ),
    ),
    )
    ),
    ], tooltip: 'Menu',
    );
  }
  }