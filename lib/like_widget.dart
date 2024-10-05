import 'package:flutter/material.dart';

class LikeWidget extends StatelessWidget {
  String imagePath;
  Color colorIcon;
  String titleIcon;

  LikeWidget(
      {required this.imagePath,
      required this.colorIcon,
      required this.titleIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child:
                Container(height: 20, width: 20, child: Image.asset(imagePath)),
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
