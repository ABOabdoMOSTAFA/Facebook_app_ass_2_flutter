import 'package:flutter/material.dart';

class LikeWidget extends StatelessWidget {
  IconData icons;
  Color colorIcon;
  String titleIcon;

  LikeWidget(
      {required this.icons, required this.colorIcon, required this.titleIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            icons,
            color: colorIcon,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(titleIcon),
          )
        ],
      ),
    );
  }
}
//Icons.thumb_up_alt_outlined
