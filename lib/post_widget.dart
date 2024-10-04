import 'package:assignment_2_flutter/like_widget.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  String personTitle;
  String postTitle;

  PostWidget({required this.postTitle, required this.personTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, bottom: 8),
                child: Column(
                  children: [
                    Text(
                      personTitle,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          "3h",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.public,
                          size: 18,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            postTitle,
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text(
                "100",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              Container(
                width: 25,
                height: 25,
                margin: EdgeInsets.only(left: 4),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              Spacer(),
              Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    "100 Comments",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Divider(
          color: Colors.black45,
          thickness: 0.5,
        ),
        Row(
          children: [
            LikeWidget(
                icons: Icons.thumb_up_alt_outlined,
                colorIcon: Colors.black,
                titleIcon: "Like"),
            Spacer(),
            LikeWidget(
                icons: Icons.chat_bubble_outline,
                colorIcon: Colors.black,
                titleIcon: "Comment"),
            Spacer(),
            LikeWidget(
                icons: Icons.reply_all,
                colorIcon: Colors.black,
                titleIcon: "share"),
          ],
        ),
        Divider(
          color: Colors.black45,
          thickness: 0.5,
        ),
      ],
    );
  }
}