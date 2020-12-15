import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/models/calls_model.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Divider(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(dummyData[index].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(dummyData[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Icon(
                    Icons.call,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
              subtitle: Container(
                  child: Text(dummyData[index].time,
                      style: TextStyle(color: Colors.grey))),
            )
          ],
        );
      },
    );
  }
}
