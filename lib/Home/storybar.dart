import 'dart:ui';

import 'package:flutter/material.dart';

import '../Models/story.dart';



class StoryBar extends StatelessWidget{
  const StoryBar({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10.0,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                  borderRadius: BorderRadius.circular(30.0),
              ),
              height: 250,
              width: 150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap:() {
                      print("Add to story click");
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 150,
                          margin: const EdgeInsets.only(bottom:30,),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                            child: Image(
                              image: AssetImage(
                                "assets/images/image12.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),

                          ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Add to Story",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),

                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 50,
                      left: 40,
                      child: IconButton(
                        onPressed: (){},
                        icon: const Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueAccent,
                        ),
                        color: Colors.blue,
                        iconSize: 45.0,
                      ),
                    ),
                ],
              ),
            ),
            for(int i = 0; i< Storydata.length; i++)...[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                height: 250,
                width: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    GestureDetector(
                      onTap: () => Storydata[i].onTap,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          GestureDetector(
                            onTap: () => Storydata[i].onTap,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30.0,),
                              child: Image(
                                image: AssetImage(Storydata[i].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom:10.0 ,
                            left: 10.0,
                            child: Text(
                              Storydata[i].userNAme,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                              ),
                            ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}