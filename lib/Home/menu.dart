import 'package:flutter/material.dart';

class MenuBars extends StatelessWidget{
  const MenuBars({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: const Row(
            children: [
              Icon(
                Icons.post_add_outlined,
              ),
              Text(
              "Text",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              ),
            ],
          ),
        ),
        Container(
          height: 60.0,
          child: const VerticalDivider(color: Colors.black,),
        ),
        TextButton(
          onPressed: () {},
          child: const Row(
            children: [
              Icon(Icons.video_call,
              ),
              Text(
                "Live Video",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}