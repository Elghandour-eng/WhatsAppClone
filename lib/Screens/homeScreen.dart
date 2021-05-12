

import 'package:flutter/material.dart';
import 'package:wahtsappclone/Screens/cameraView.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
GlobalKey tabKey =GlobalKey();
int index =1;
TabController controller;
  @override
  initState()
  {
    super.initState();
    controller=TabController(vsync: this,length: 4,initialIndex: 1,);
  }
@override
void dispose()
{  controller.dispose();
super.dispose();


}
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('WhatsApp'),
        actions: [
           Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: (context)
            {


          if(controller.index==1)
          {
            return

              [
                PopupMenuItem(child: Text('New Group')),
                PopupMenuItem(child: Text('New Chat Massage')),
                PopupMenuItem(child: Text('WhatsApp Web')),
                PopupMenuItem(child: Text('Stared Massages')),
                PopupMenuItem(child: Text('Settings')),

              ];
          }
          else if(controller.index==2)
          {
            return

              [
                PopupMenuItem(child: Text('Status Privacy')),
                PopupMenuItem(child: Text('Settings')),

              ];
          }
          else if(controller.index==3)
          {
            return

              [
                PopupMenuItem(child: Text('Remove Calls')),
                PopupMenuItem(child: Text('Settings')),

              ];
          }
          else {
            return null;
          }
            },
          ),
        ],
        bottom: TabBar(
indicatorColor: Colors.white,

          controller:controller ,
          tabs: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.camera_alt),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Chats'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Status'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Calls'),
            ),

          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          CameraViewWidget(),
          Text('Caths'),
          Text('Caths'),
          Text('Caths'),
        ],
      ),
    );
  }
}
