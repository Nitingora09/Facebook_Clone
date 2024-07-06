import 'package:flutter/material.dart';



class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Friend',
              style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold,fontSize: 30,

              ),
              ),
            ),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.search),),
          ],
        )
      ],
    );


  }
}
