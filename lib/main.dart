import 'package:awhatsappui/widgets/thescaffold.dart';
import 'package:flutter/material.dart';
import './constants.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'WhatsappClone',
    theme: ThemeData( 
    scaffoldBackgroundColor: kWhitecolor,
    appBarTheme: AppBarTheme(color: kChatscolor),
    ),
    home: TheScaffoldWidget(),
  ),
  );
}

