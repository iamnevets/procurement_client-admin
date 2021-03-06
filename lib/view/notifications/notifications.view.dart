import 'package:flutter/material.dart';
import 'package:procurement/model/notification.view.dart';
import 'package:procurement/view/navigation.view.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  _NotificationsViewState createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 20,
              ),
            )
          ],
        ),
        drawer: NavigationDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: ListView.builder(
              itemCount: listAllNotifications.length,
              itemBuilder: (BuildContext context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(listAllNotifications[index].content),
                    ),
                    Divider()
                  ],
                );
              }),
        ));
  }
}
