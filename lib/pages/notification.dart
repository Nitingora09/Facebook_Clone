import 'package:flutter/material.dart';


class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {

    return Container(
      // color: Colors.grey[350],
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              width: double.infinity,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // color: Colors.red,
                      child: Text(
                        "Notification",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    child: IconButton (
                      icon: const Icon(Icons.search),
                      color: Colors.black,
                      onPressed: () {
                        print("clicked on search");
                      },
                    ),
                  ),
                ],
              ),
            ),

            Container(
              // height: 700,
              color: Colors.white,
              // padding: EdgeInsets.all(10),
              // margin: EdgeInsets.only(top: 10),
              //   width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.all(9),
                        child: Text(
                          "Earlier",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                              color: Colors.white,
                              textBaseline: TextBaseline.ideographic,
                            backgroundColor: Colors.grey,
                          ),
                        )),

                    Container(
                      color: Colors.blue[100],
                      child: ListTile(
                        isThreeLine: false,
                        title: Text("Your last story has expired. You can create a new story",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),
                        ),
                        subtitle: Text(
                          "Tue at 12:54 AM",
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Icon(Icons.more_horiz),
                        leading: Container(
                            child: CircleAvatar(
                              radius: 30,
                              child: Icon(
                                Icons.watch_later_outlined,
                                size: 30.0,
                                color: Colors.white,
                              ),
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage('assets/images/image6.jpg'),
                            )),
                      ),
                    ),
                    Container(
                      color: Colors.blue[100],
                      child: ListTile(
                        isThreeLine: false,
                        title: Text("You have a new friend suggestion: Aakash, Nitin, Sachin and 4 other.",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Mar 23 at 5:46 PM",
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Icon(Icons.more_horiz),
                        leading: Container(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/image 5.jpg'),
                            )),
                      ),
                    ),
                    Container(
                      color: Colors.blue[100],
                      child: ListTile(
                        isThreeLine: false,
                        title: Text("You might like this.",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "4d. mr_niikk ",
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Icon(Icons.more_horiz),
                        leading: Container(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/image.jpg'),
                            )),
                      ),
                    ),
                    Container(
                      color: Colors.blue[100],
                      child: ListTile(
                        isThreeLine: false,
                        title: Text("You have a new friend suggestion: Sachin, mr.nikk and 6 other.",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Mar 22 at 10:40 PM",
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Icon(Icons.more_horiz),
                        leading: Container(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/image(3).jpg'),
                            )),
                      ),
                    ),
                    Container(
                      color: Colors.blue[100],
                      child: ListTile(
                        isThreeLine: false,
                        title: Text("You might like this.",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "10d. mr.nikk ",
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Icon(Icons.more_horiz),
                        leading: Container(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/image7.jpg'),
                            )),
                      ),
                    ),
                    Container(
                      color: Colors.blue[100],
                      child: ListTile(
                        isThreeLine: false,
                        title: Text("You have a new friend suggestion: Nitin, Sachin and 6 other.",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Mar 15 at 9:46 PM",
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Icon(Icons.more_horiz),
                        leading: Container(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/images/image 4.jpg'),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      color: Colors.blue[100],
                      child: ListTile(
                        isThreeLine: false,
                        title: Text("You have a new friend suggestion: Pankaj, Manish, Himanshu and 5 others.",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Feb 25 at 1:45 AM",
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Icon(Icons.more_horiz),
                        leading: Container(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/image.jpeg'),
                            )),
                      ),
                    ),
                    Container(
                      color: Colors.blue[100],
                      child: ListTile(
                        isThreeLine: false,
                        title: Text("You logged into Pi on Mar 17, 2024, 11:27 AM. Not You? You can remove the app",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),

                        ),
                        subtitle: Text(
                          "Feb 17 at 11:27 AM",
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Icon(Icons.more_horiz),
                        leading: Container(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/image8.jpg'),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ]),
            ),
            ElevatedButton(onPressed: (){
              print("clicked on previous notifications button");
            },
              style: TextButton.styleFrom(
                  foregroundColor: Colors.black26,
                  backgroundColor: Colors.grey[350]
              ),
              child: Text("See previous notifications",
                style: TextStyle(fontSize: 23),
              ),
            ),
            SizedBox(
              height: 500,
            ),
            // Container(a
            //   height: 400,
            //   color: Colors.white,
            //   // padding: EdgeInsets.all(10),
            //   margin: EdgeInsets.only(top: 15),
            //   width: double.infinity,
            //   child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Container(
            //             margin: EdgeInsets.all(10),
            //             child: Text(
            //               "New",
            //               style: TextStyle(fontSize: 20),
            //             )),
            //         Container(
            //           color: Colors.blue[100],
            //           child: ListTile(
            //             isThreeLine: false,
            //             title: Text("Jaatni"),
            //             subtitle: Text(
            //                 "has a new post from "),
            //             trailing: Icon(Icons.more_horiz),
            //             leading: Container(
            //                 child: CircleAvatar(
            //                   radius: 40,
            //                   child: CircleAvatar(
            //                     radius: 40,
            //                     backgroundImage: AssetImage('assets/images/dp.jpeg'),
            //                   ),
            //                 )),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 5,
            //         ),
            //         Container(
            //           color: Colors.blue[100],
            //           child: ListTile(
            //             isThreeLine: false,
            //             title: Text("Gaming"),
            //             subtitle: Text(
            //                 "has a new post from "),
            //             trailing: Icon(Icons.more_horiz),
            //             leading: Container(
            //                 child: CircleAvatar(
            //                   radius: 40,
            //                   child: CircleAvatar(
            //                     radius: 40,
            //                     backgroundImage: AssetImage('assets/images/dp.jpeg'),
            //                   ),
            //                 )),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 5,
            //         ),
            //         Container(
            //           color: Colors.blue[100],
            //           child: ListTile(
            //             isThreeLine: false,
            //             title: Text("Neha"),
            //             subtitle: Text(
            //                 "has a new post from "),
            //             trailing: Icon(Icons.more_horiz),
            //             leading: Container(
            //                 child: CircleAvatar(
            //                   radius: 40,
            //                   child: CircleAvatar(
            //                     radius: 40,
            //                     backgroundImage: AssetImage('assets/images/dp.jpeg'),
            //                   ),
            //                 )),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 5,
            //         ),
            //         Container(
            //           color: Colors.blue[100],
            //           child: ListTile(
            //             isThreeLine: false,
            //             title: Text("Anjal Priya"),
            //             subtitle: Text(
            //                 "has a new post from "),
            //             trailing: Icon(Icons.more_horiz),
            //             leading: Container(
            //                 child: CircleAvatar(
            //                   radius: 40,
            //                   child: CircleAvatar(
            //                     radius: 40,
            //                     backgroundImage: AssetImage('assets/images/dp.jpeg'),
            //                   ),
            //                 )),
            //           ),
            //         ),
            //       ]),
            // ),
          ],
        ),
      ),
    );
  }
}
