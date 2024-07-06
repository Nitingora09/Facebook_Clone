import 'dart:html';

import 'package:facebook/Models/videoo.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class VideoPage extends StatefulWidget{
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
 bool isSwitched = false;

 Widget build(BuildContext context) {
   return Column(
     children: [
       Container(
         child:
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 const Text(
                   "Video",
                   style: TextStyle(
                     fontSize: 30,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 Container(
                   margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
                   child: Tooltip(
                     message: "Play video in loop",
                     child: Switch(
                       value: isSwitched,
                       onChanged: (value) {
                         setState(
                                 () {
                                   isSwitched = value;
                         },
                         );
                       },
                     ),
                   ),
                 ),
               ],
             ),
           ),
       const Divider(
         thickness: 1,
         color: Colors.black26,
       ),
       Expanded(child:ListView.builder(
           itemCount: videoData.length,
       itemBuilder: (context,i) => Column(
         children: [
           Row(
             children: [
               IconButton(onPressed: () {},
                   icon: CircleAvatar(
                 radius: 40.0,
                     backgroundImage: AssetImage(videoData[i].avatarimage),
               ),
               ),
               Expanded(child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       Text(
                         videoData[i].name,
                         style: const TextStyle(
                           fontSize: 20.0,
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       TextButton(onPressed: () {},
                           child: const Text(
                             "Follow",
                             style: TextStyle(
                               fontSize: 10.0,
                               color: Colors.blue,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                       ),
                     ],
                   ),
                   Wrap(
                     spacing: 20.0,
                     children: [
                       Text(
                         videoData[i].time,
                         style: const TextStyle(
                           fontSize: 18.0,
                         ),
                       ),
                     ],
                   ),
                 ],
               ),
               ),
               IconButton(onPressed: videoData[i].moreonpressed,
                   icon: const Icon(Icons.more_horiz_outlined,
                   ),
               ),
             ],
           ),
           Container(
             margin: const EdgeInsets.symmetric(
               horizontal: 10.0,vertical: 10.0),
   child: Column(
   crossAxisAlignment: CrossAxisAlignment.start,
   children: [
     YoutubePlayerControllerProvider(
     controller: YoutubePlayerController.fromVideoId(
     videoId: videoData[i].videoid,
   autoPlay:true,
   params: const YoutubePlayerParams(
   showFullscreenButton: false,
   mute: false,
   ),
   ),
   child: YoutubePlayer(
   controller: YoutubePlayerController.fromVideoId(
   videoId: videoData[i].videoid,
   autoPlay: true,
   params: const YoutubePlayerParams(
   showFullscreenButton: false,
   mute: false,
   ),
   ),
   aspectRatio: 16/9,
   ),
   ),
   Padding(padding: EdgeInsets.all(8.0),
   child: Text(
   videoData[i].videoPosttittle,
   style: const TextStyle(
   fontSize: 18.0,
   color: Colors.black,
   ),
   ),
   ),

   ],
   ),
             ),
   Row(
   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
   children: [
     Row(
   children: [
     IconButton(
   onPressed: videoData[i].likeonpressed,
   icon: const Icon(Icons.thumb_up_alt_outlined),
   ),
   const Text(
   '12',
   style: TextStyle(
   fontSize: 18.0,
   ),
   ),
   ],
   ),
   Row(
   children: [
     IconButton(
   onPressed: videoData[i].commentonpressed,
   icon:const Icon(Icons.message_outlined),
   ),
   const Text(
   '10',
   style: TextStyle(
   fontSize: 18.0,
   ),
   ),
   ],
   ),
   Row(
   children: [
     IconButton(
   onPressed: videoData[i].shareonpressed,
   icon:const Icon(Icons.share_outlined),
   ),
   ],
   ),
   ],
   ),

         ],
       ),
       ),
       ),
     ],
   );
 }
}


