import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget{
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext Context) {
    return Text(
      "Messages Page",
      textDirection: TextDirection.ltr,
    );
  }
}