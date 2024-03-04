import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/image_constants.dart';
import 'package:flutter_application_1/view/dummy_db.dart';
import 'package:flutter_application_1/view/dummypostdb.dart';
import 'package:flutter_application_1/view/home_screen/widgets/custome_post.dart';
import 'package:flutter_application_1/view/home_screen/widgets/custome_story.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.camera_alt_outlined),
        title: Image.asset(
          ImageConstants.apptextlogo,
          scale: 1.5,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.ios_share_rounded)),
        ],
      ),
      body: Column(
        children: [
          //#1 custom story section
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                DummyDb.storyList.length,
                (index) => CustomStoryAvatar(
                  proPic: DummyDb.storyList[index]["proPic"],
                  userName: DummyDb.storyList[index]["userName"],
                  isLive: DummyDb.storyList[index]["isLive"],
                ),
              ),
            ),
          ),
          // Wrap the CustomPostCard with a Container to provide constraints
          Container(
            width: double.infinity,
            height: 400.0, // Adjust the height as needed
            child: ListView.builder(
              itemCount: DummyPostDb.postList.length,
              itemBuilder: (context, index) => CustomPostCard(
                proPic:DummyPostDb.postList[index]["propic"],
                username:DummyPostDb.postList[index]["username"],
                description:DummyPostDb.postList[index]["description"],

              ),
            ),
          ),
        ],
      ),
    );
  }
}
