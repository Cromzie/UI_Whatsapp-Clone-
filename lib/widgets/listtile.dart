import 'package:awhatsappui/widgets/texts.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import './images.dart';

Map chats = {
  'person': [
    'Archived',
    'Ade',
    'Deion',
    'Beyonce',
    'Denzel',
    'Gaynelle',
    'Lakin',
    'Shope',
    'Feranmi',
    'Wuyi',
    'Lanre',
    'Fope',
    'Khaffi',
  ],
  'message': [
    ' ',
    'Hello!',
    'Kentay',
    'La Vonn',
    'Latoya',
    'Mekell',
    'Dericia',
    'Lakin',
    'Aso Rock',
    'Abuja',
    'Lagos State',
    'Nigeria',
    'Africa'
  ],
  'trailing': [
    '5',
    'Yesterday',
    '29/01/2022',
    '2:06 am',
    '2:14 am',
    'Yesterday',
    'Yesterday',
    'Yesterday',
    'Yesterday',
    'Yesterday',
    'Yesterday',
    'Yesterday',
    'Yesterday'
  ],
  Image: [
    Icon(Icons.archive_outlined),
    ImageWidget(imagename: 'mister'),
    ImageWidget(imagename: 'babe'),
    ImageWidget(imagename: 'babe2'),
    ImageWidget(imagename: 'child'),
    ImageWidget(imagename: 'couples'),
    ImageWidget(imagename: 'fathernchild'),
    ImageWidget(imagename: 'grandma'),
    ImageWidget(imagename: 'grandma2'),
    ImageWidget(imagename: 'lollipop'),
    ImageWidget(imagename: 'mothernchild'),
    ImageWidget(imagename: 'puppy'),
    ImageWidget(imagename: 'babes'),
  ],
};


class ListTileWidget extends StatelessWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: chats['message'].length,
        controller: ScrollController(),
        itemBuilder: (context, index) =>ListTile(
                onTap: (){},
                selectedTileColor: kIconscolor,
                leading: chats[Image][index],
                title: TextsWidget(
                  text: chats['person'][index],
                  color: kAppbarcolor,
                  fontweight: FontWeight.bold,
                ),
                subtitle: TextsWidget(
                  text: chats['message'][index],
                  color: kAppbarcolor,
                ),
                trailing: TextsWidget(
                  text: chats['trailing'][index],
                  color: kIconscolor, fontweight: FontWeight.bold, fontsize: 12.0,
                ),
              ),
            );
  }
}