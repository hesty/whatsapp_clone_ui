import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/screens/camera_screen.dart';
import 'package:whatsapp_clone_ui/screens/chats_screen.dart';
import 'package:whatsapp_clone_ui/screens/status_screen.dart';

import 'calls_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(),
      body: TabBarView(
        controller: tabController,
        children: [
         new CameraScreen(),
          new ChatsScreen(),
          new StatusScreen(),
          new CallsScreen()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message,color: Colors.white,),
        backgroundColor: Color(0xff25D366),
        onPressed: (){
          print("test");
        },
      ),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      title: Text("WhatsApp"),
      elevation: 0.7,
      actions: [
        IconButton(
          icon: Icon(Icons.search,color: Colors.white,),
          onPressed: (){},
        ),
        IconButton(
          icon: Icon(Icons.more_vert,color: Colors.white,),
          onPressed: (){},
        )
      ],
      bottom: TabBar(
        controller: tabController,
        indicatorColor: Colors.white,
        tabs: [
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            text: "CHATS",
          ),
          Tab(
            text: "STATUS",
          ),
          Tab(
            text: "CALLS",
          )
        ],
      ),
    );
  }
}
