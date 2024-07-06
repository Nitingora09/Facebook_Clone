import 'dart:ffi';

import 'package:flutter/material.dart';


class VideoModel {
  final VoidCallback avatarOnpressed;
  final String avatarimage;
  final String name;
  final String time;
  final VoidCallback moreonpressed;
  final String videoPosttittle;
  final String videoid;
  final VoidCallback likeonpressed;
  final VoidCallback commentonpressed;
  final VoidCallback shareonpressed;


  VideoModel({
    required this.avatarOnpressed,
    required this.avatarimage,
    required this.name,
    required this.time,
    required this.moreonpressed,
    required this.videoPosttittle,
    required this.videoid,
    required this.likeonpressed,
    required this.commentonpressed,
    required this.shareonpressed,
  });
}

  List<VideoModel> videoData = [
    VideoModel(
      avatarOnpressed: () {},
      avatarimage: "assets/images/image9.jpg",
      name: "mr.nikk",
      time: "6:30am",
      moreonpressed: () {},
      videoPosttittle: "Video Creater",
      videoid: "AVNMusicSeries",
      likeonpressed: () {},
      commentonpressed: () {},
      shareonpressed: () {},
    ),
    VideoModel(
      avatarOnpressed: () {},
      avatarimage: "assets/images/image.jpg",
      name: "Nitin gora",
      time: "6:00am",
      moreonpressed: () {},
      videoPosttittle: "Haryanvi music",
      videoid: "Mad4MusicHaryanvi",
      likeonpressed: () {},
      commentonpressed: () {},
      shareonpressed: () {},
    ),
  ];
