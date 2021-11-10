import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
            ),
            Container(
              
              child: Column(
                children: [
                  Text('Name')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}