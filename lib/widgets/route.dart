import 'package:awhatsappui/widgets/container.dart';
import 'package:flutter/material.dart';
import './texts.dart';
import '../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

taptap() {
  
}

Map settingspage = {
  'lead': [
    Icon(FontAwesomeIcons.key),
    Icon(Icons.chat_bubble_outline_outlined),
    Icon(FontAwesomeIcons.bell),
    Icon(Icons.data_usage),
    Icon(Icons.help),
    Icon(Icons.people_rounded),
  ],
  'title': [
    'Account',
    'Chats',
    'Notifications',
    'Storage and data',
    'Help',
    'Invite a friend'
  ],
  'sub': [
    'Privacy, security, change number',
    'Theme. wallpapers, chat history',
    'Message, group & call tones',
    'Network usage, auto-download',
    'Help centre, contact us, privacy policy',
    ''
  ],
};

class RouteWidget extends StatelessWidget {
  const RouteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextsWidget(
          text: 'Settings',
          color: kWhitecolor,
        ),
        backgroundColor: kChatscolor,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListTile(
              contentPadding: EdgeInsets.only(right: 20.0, top: 5.0),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/dp.JPG'),
                maxRadius: 30.0,
              ),
              title: TextsWidget(
                text: 'Grace',
                color: kBlackcolor,
              ),
              subtitle: TextsWidget(
                text: 'I just want to make a difference in my world',
                color: kBlackcolor.withOpacity(0.7),
                fontsize: 14.0,
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.barcode,
                    color: kChatscolor,
                  )),
            ),
          ),
          Expanded(
            flex: 6,
            child: ListView.builder(
                itemBuilder: (context, index) => ListTile(
                      leading: settingspage['lead'][index],
      //                 onTap: () => Navigator.push(
      // context,
      // MaterialPageRoute(
      //   builder: (context) => ContainerWidget(),
      // )),
                      title: TextsWidget(
                        text: settingspage['title'][index],
                        color: kBlackcolor,
                      ),
                      subtitle: TextsWidget(
                        text: settingspage['sub'][index],
                        color: kBlackcolor,
                        fontsize: 12.0,
                      ),
                    ),
                itemCount: settingspage['lead'].length),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                TextsWidget(
                  text: 'from',
                  color: Colors.grey,
                  fontsize: 10.0,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.double_arrow_sharp,
                      color: kBlackcolor,
                      size: 12.0,
                    ),
                    label: TextsWidget(
                        text: 'Meta',
                        color: kBlackcolor,
                        fontsize: 12.0,
                        fontweight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
