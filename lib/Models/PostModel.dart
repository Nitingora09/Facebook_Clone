import 'package:flutter/material.dart';


class PostModel{
  final VoidCallback avatarOnpressed;
  final String avatarimage;
  final String name;
  final String time;
  final VoidCallback moreOnpressed;
  final String PostTitle;
  final String PostImage;
  final VoidCallback likeOnpressed;
  final VoidCallback commentOnpressed;
  final VoidCallback shareOnpressed;

  PostModel({
    required this.avatarOnpressed,
    required this.avatarimage,
    required this. name,
    required this. time,
    required this.moreOnpressed,
    required this.PostTitle,
    required this.PostImage,
    required this.likeOnpressed,
    required this.commentOnpressed,
    required this.shareOnpressed,
});
}

List<PostModel> Postdata =[
  PostModel(
    avatarOnpressed: () {},
    avatarimage: "assets/images/image6.jpg",
    name:"mr.nikk",
    time: "6:30",
    moreOnpressed: () {
      print("more on pressed clicked");
    },
    PostTitle: "Combination of nature and animal",
    PostImage: "assets/images/image6.jpg",
    likeOnpressed: () {
      print("like on pressed clicked");
    },
    commentOnpressed: () {
      print("comment on pressed clicked");
    },
    shareOnpressed: () {
      print("share on pressed clicked");
    }

  )
];
