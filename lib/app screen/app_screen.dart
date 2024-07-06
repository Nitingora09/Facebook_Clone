import 'package:facebook/pages/friends.dart';
import 'package:facebook/pages/home_page.dart';
import 'package:facebook/pages/market.dart';
import 'package:facebook/pages/message.dart';
import 'package:facebook/pages/notification.dart';
import 'package:facebook/pages/profile_page.dart';
import 'package:facebook/pages/video.dart';
import 'package:flutter/material.dart';

class MainTabsss extends StatefulWidget {
  const MainTabsss({super.key});

  @override
  State <MainTabsss> createState() =>  _MainTabsssState();
}

class  _MainTabsssState extends State <MainTabsss>
    with SingleTickerProviderStateMixin
{
  TabController? _tabController;

  final List<Tab> topTabs = [
    const Tab(
      icon: Icon(Icons.home_outlined,color: Colors.black,),
    ),
    const Tab(
      icon: Icon(Icons.people_outline),
    ),
    const Tab(
      icon: Icon(Icons.video_library_outlined),
    ),
    const Tab(
      icon: Icon(Icons.shopping_bag_outlined),
    ),
    const Tab(
      icon: Icon(Icons.notifications_outlined),
    ),
    const Tab(
      icon: Icon(Icons.message_outlined),
    ),
  ];
  Future<bool> _onWillPop() async{
    return _tabController?.index==0;
  }
  final _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  void initState(){
    _tabController =
    TabController(length: topTabs.length,initialIndex: 0 ,vsync: this)
      ..addListener(() {
        setState(() { });
      });
    super.initState();
  }


  @override
  Widget build(BuildContext context){
    return WillPopScope (
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          title: Text(
            "Facebook",
            style: TextStyle(fontSize: 25,color: Colors.blueAccent),
          ),
          actions: [
            Container(
              child: IconButton(
                icon: const Icon(Icons.search),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
              ),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,color: Colors.grey),
              ),
                Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                 child: IconButton(
                icon: const Icon(
                   Icons.menu
    ),
    color: Colors.black,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onPressed: () {},
    ),
    decoration: const BoxDecoration(
       shape: BoxShape.circle,color: Colors.grey,
    ),
                ),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: topTabs,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const[
            HomePage(),
            FriendsPage(),
            VideoPage(),
            MarketPage(),
            NotificationPage(),
            MessagePage(),
          ],
        ),
      ),
    );
  }
}