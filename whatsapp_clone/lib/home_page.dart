import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/calls_screen.dart';
import 'package:whatsapp_clone/screen/chats_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // internet connectivity check

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // backgroundColor: Colors.teal,
        appBar: AppBar(
          elevation: 0.0,
          title: const Text("WhatsApp"),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.group_outlined),
              ),
              Text("Chats"),
              Text("Status"),
              Text("Calls"),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(
                10.0,
              ),
              child: Icon(Icons.camera_alt_outlined),
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: 1,
                  child: Text("Clear call log"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Settings"),
                ),
                PopupMenuItem(
                  child: Text("Logout"),
                ),
              ],
            ),
          ],
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Start your community"),
            ),
            ChatsScreen(),
            Text("data"),
            CallScreen(),
          ],
        ),
      ),
    );
  }
}
