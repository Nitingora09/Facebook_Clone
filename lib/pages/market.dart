import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget{
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}


class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext Context) {
    return Text(
      "Market Page",
      textDirection: TextDirection.ltr,
    );
  }
}