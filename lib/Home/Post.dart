import 'package:facebook/Models/PostModel.dart';
import 'package:flutter/material.dart';


class Post extends StatelessWidget{
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          for(var i = 0; i< Postdata.length; i++)...[
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundImage: AssetImage(
                        Postdata[i].avatarimage,
                      ),
                    ),
                ),
                Expanded(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Postdata[i].name,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                        ),
                          Wrap(
                               spacing: 10.0,
                                children: [
                          Text(
                               Postdata[i].time,
                               style: const TextStyle(fontSize: 18.0),
    ),
                               const Icon(Icons.public)
    ],
    ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: Postdata[i].moreOnpressed,
                    icon: const Icon(
                      Icons.more_horiz_outlined,
                    ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(
                        10,
                      ),
                    child: Text(
                      Postdata[i].PostTitle,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Image(image: AssetImage(Postdata[i].PostImage))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: Postdata[i].commentOnpressed,
                      icon: const Icon(
                        Icons.message_outlined,
                      ),
                    ),
                    const Text("101")
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: Postdata[i].commentOnpressed,
                      icon: const Icon(
                        Icons.message_outlined,
                      ),
                    ),
                    const Text("101")
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: Postdata[i].commentOnpressed,
                      icon: const Icon(
                        Icons.message_outlined,
                      ),
                    ),
                    const Text("101")
                  ],
                ),

              ],
            ),

          ],
        ],
      ),
    );
  }
}