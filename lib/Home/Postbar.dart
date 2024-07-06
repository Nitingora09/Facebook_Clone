import 'package:flutter/material.dart';


class PostBars extends StatelessWidget{
  const PostBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          iconSize: 30,
          onPressed: () {},
          icon: CircleAvatar(
            radius: 60,
            backgroundImage:AssetImage("assets/images/image6.jpg"),

            backgroundColor: Colors.black,
          ),
        ),
        Container(
          height: 60.0,
        ),
        Column(
          children: [
            IconButton(
              onPressed: () => print('photos is clicked'),
              icon: const Icon(Icons.photo_album_outlined),
            ),
            const Text('Photo')
          ],
        ),
      ],
    );
  }
}