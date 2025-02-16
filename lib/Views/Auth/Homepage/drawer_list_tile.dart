import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerListTile extends StatelessWidget {
late final IconData iconName;
late final String title;

DrawerListTile({required this.iconName, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){},
      child: ListTile(
        title: Container(alignment: Alignment.center,
        height: 50,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(iconName,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(title,
            ),
          )
        ],),),),
    );
  }
}
