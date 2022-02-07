import 'package:flutter/material.dart';

const Color kAppbarcolor = Color(0xFF222E35);
const Color kBgcolor = Color(0xFF111B21);
const Color kChatscolor = Color(0xFF18A05E);
const Color kIconscolor = Color(0xFFAEBAC1);
const Color kNamecolor = Color(0xFFDCEDE3);
const Color kWhitecolor = Colors.white;
const Color kBlackcolor = Colors.black;

class Name {
  static final IconButton search = IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.search,
      color: kWhitecolor,
    ),
  );

  static final IconButton camera = IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.camera_alt_sharp,
      color: kIconscolor,
    ),
  );
}

ThemeData isLight = ThemeData(
    backgroundColor: Colors.amber, appBarTheme: AppBarTheme(color: Colors.black), scaffoldBackgroundColor: Colors.black);

class ThemeWidget extends StatefulWidget {
  const ThemeWidget({Key? key}) : super(key: key);

  @override
  _ThemeWidgetState createState() => _ThemeWidgetState();
}

class _ThemeWidgetState extends State<ThemeWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(Icons.ac_unit),
      onTap: () => isLight,
    );
  }

  // them() {}
}
