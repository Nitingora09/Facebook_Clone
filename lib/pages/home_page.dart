import 'package:facebook/Home/Post.dart';
import 'package:facebook/Home/Postbar.dart';
import 'package:facebook/Home/menu.dart';
import 'package:facebook/Home/storybar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState()  => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext Context) {
    return Container(
      margin: const EdgeInsets.only(top:10),
      child: ListView(
          children: [
            PostBars(),
            Divider(
                thickness: 1.0,
                color:Colors.black,
            ),
            MenuBars(),
            Divider(
              thickness: 1.0,
              color: Colors.black,
            ),
            StoryBar(),
            Divider(
              color:Colors.black,
              thickness: 1,
            ),
            Post(),

          ],
      ),);
  }
}