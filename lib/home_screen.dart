import 'package:assignment_2_flutter/post_widget.dart';
import 'package:assignment_2_flutter/story_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Home',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                ],
              ),
            ),
            Column(
              children: [
                PostWidget(
                  postTitle: "My name is Abdo",
                  personTitle: "Abdo",
                ),
                PostWidget(
                  postTitle: "Yomina in my heart ",
                  personTitle: "Yomina",
                ),
                PostWidget(
                  postTitle: "Mostafa is a bad child",
                  personTitle: "Mostafa",
                ),
                PostWidget(
                  postTitle: "Iam a Father",
                  personTitle: "Hany",
                ),
                PostWidget(
                  postTitle: "Iam a Mother",
                  personTitle: "Mom",
                ),
                PostWidget(
                  postTitle: "Iam a GrandMa",
                  personTitle: "GrandMa",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
/*Container(
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 130,
                      height: 180,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/facebookStory.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ],
                ),
              ),*/
