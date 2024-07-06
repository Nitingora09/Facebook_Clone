import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();

}
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext Context) {
    return Text(
      "Profile Page",
      textDirection: TextDirection.ltr,
    );
  }
}