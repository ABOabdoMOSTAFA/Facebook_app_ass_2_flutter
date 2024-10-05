import 'package:assignment_2_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryData storyData;

  StoryWidget({required this.storyData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 100,
      // height: 150,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.facebookStory)),
          borderRadius: BorderRadius.circular(30)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.person_sharp,
                  color: Colors.white,
                  size: 20,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                storyData.titleStory,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class StoryData {
  String titleStory;

  StoryData({required this.titleStory});
}
// Container(
// margin: EdgeInsets.all(10),
// width: 100,
// // height: 150,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage(AppImages.facebookStory)),
// borderRadius: BorderRadius.circular(20)),
// child: Stack(
// children: [
// Align(
// alignment: Alignment.topLeft,
// child: Container(
// width: 40,
// height: 40,
// decoration: BoxDecoration(
// color: Colors.blueAccent,
// borderRadius: BorderRadius.circular(30)),
// child: Icon(
// Icons.person_sharp,
// color: Colors.white,
// size: 20,
// )),
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 10.0,
// ),
// child: Align(
// alignment: Alignment.bottomLeft,
// child: Text(
// storyData.titleStory,
// style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
// ),
// ),
// )
// ],
// ),
// )