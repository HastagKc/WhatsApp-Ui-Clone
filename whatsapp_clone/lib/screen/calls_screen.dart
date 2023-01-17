import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/user_model.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: UserList.length,
        itemBuilder: (context, index) {
          // creating user as an obj and passing list value to that obj

          // var user = UserList[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(UserList[index]["avatar"].toString()),
            ),
            title: Row(
              children: [
                Text(
                  UserList[index]["first_name"].toString(),
                ),
                SizedBox(
                  width: 6.0,
                ),
                Text(
                  UserList[index]["last_name"].toString(),
                ),
              ],
            ),
            subtitle: Text(
              DateTime.now().toString(),
            ),
            trailing: Icon(
              index % 2 == 0 ? Icons.call_end : Icons.video_call_outlined,
            ),
          );
        },
      ),
    );
  }
}
