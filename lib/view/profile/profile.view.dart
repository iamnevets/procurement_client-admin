import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procurement/view/navigation.view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          elevation: 0,
        ),
        // drawer: NavigationDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Theme.of(context).colorScheme.primary,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.white.withAlpha(40),
                      child: Icon(Icons.person_outlined, size: 80, color: Colors.white,)),
                      SizedBox(height: 20,),
                    Text('Admin', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),)
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Profile Name', style: TextStyle(fontSize: 32, color: Theme.of(context).colorScheme.primary),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}