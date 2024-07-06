import 'package:facebook/pages/video.dart';
import 'package:flutter/material.dart';

class StoryModel {
  final VoidCallback onTap;
  final String image;
  final String userNAme;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.userNAme,
});}

  List<StoryModel> Storydata = [
    StoryModel(
      image: 'assets/images/image9.jpg',
      userNAme: "jane Smith",
      onTap: () => print('story 2 clicked',),

    ),
    StoryModel(
      image: 'assets/images/image10.jpg',
      userNAme: "Jane Smith",
      onTap: () => print('story 2 clicked'),
    ),
    StoryModel(
      image: 'assets/images/image11.jpg',
      userNAme: "Nitin ",
      onTap: () => print('story 3 clicked'),
    ),
    StoryModel(
      image: 'assets/images/image12.jpg',
      userNAme: "mr.nikk",
      onTap: () => print('story 4 clicked'),
    ),
    StoryModel(
      image: 'assets/images/image13.jpg',
      userNAme: "Sachin",
      onTap: () => print('story 5 clicked'),
    ),
    StoryModel(
      image: 'assets/images/image14.jpg',
      userNAme: "Aakash",
      onTap: () => print('story 6 clicked'),
    ),
    StoryModel(
      image: 'assets/images/image15.jpg',
      userNAme: "Pankaj",
      onTap: () => print('story 7 clicked'),
    ),
    StoryModel(
      image: 'assets/images/image16.jpg',
      userNAme: "John Doe",
      onTap: () => print('story 8 clicked'),
    ),
    StoryModel(
      image: 'assets/images/image17.jpg',
      userNAme: "John Doe",
      onTap: () => print('story 9 clicked'),
    ),
    StoryModel(
      image: 'assets/images/image7.jpg',
      userNAme: "John Doe",
      onTap: () => print('story 10 clicked'),
    ),
  ];

