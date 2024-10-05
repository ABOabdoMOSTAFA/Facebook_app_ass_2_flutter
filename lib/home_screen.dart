import 'package:assignment_2_flutter/constants/constants.dart';
import 'package:assignment_2_flutter/post_widget.dart';
import 'package:assignment_2_flutter/story_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
  List<StoryData> storyData = [];
  List<PostData> postData = [];

  HomeScreen() {
    for (int i = 0; i < 10; i++) {
      print("object from story data building .........$i");
      storyData.add(StoryData(titleStory: "owner"));
    }
    print(
        "/---------------------------------------------------------------------------");
    for (int j = 0; j < 100; j++) {
      print("object from Post data building .........$j");
      postData.add(PostData(personTitle: "Owner", postTitle: "MY application"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          StringsTitle.appbarTitle,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemBuilder: (context, index) {
                print("in builder StoryWidget ......$index");
                return InkWell(
                    onTap: () => print("story..........$index"),
                    child: StoryWidget(storyData: storyData[index]));
              },
              itemCount: storyData.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          // Row(
          //   children: [
          //     StoryWidget(storyData: StoryData(titleStory: "owner"),),
          //     StoryWidget(storyData: StoryData(titleStory: "owner"),),
          //     StoryWidget(storyData: StoryData(titleStory: "owner"),),
          //     StoryWidget(storyData: StoryData(titleStory: "owner"),),
          //     StoryWidget(storyData: StoryData(titleStory: "owner"),),
          //     StoryWidget(storyData: StoryData(titleStory: "owner"),),
          //     StoryWidget(storyData: StoryData(titleStory: "owner"),),
          //     StoryWidget(storyData: StoryData(titleStory: "owner"),),
          //   ],
          // ),
          Expanded(
              flex: 3,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  print("in builder PostWidget ......$index");
                  return InkWell(
                      onTap: () => print("Post..........$index"),
                      child: PostWidget(postData: postData[index]));
                },
                scrollDirection: Axis.vertical,
                itemCount: postData.length,
              )),
        ],
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
