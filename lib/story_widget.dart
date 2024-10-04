import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 100,
      height: 150,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/facebookStory.jpg"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20)),
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
                "owner",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
