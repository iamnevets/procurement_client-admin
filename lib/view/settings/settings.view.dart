import 'package:flutter/material.dart';
import 'package:procurement/view/navigation.view.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: ListView(
            children: [
              ListTile(
                title: Text('Appearance'),
                onTap: (){},
              ),
              ListTile(
                title: Text('Account'),
                onTap: (){},
              ),
              ListTile(
                title: Text('Appearance'),
                onTap: (){},
              ),
              ListTile(
                title: Text('About'),
                onTap: (){},
              ),
              ListTile(
                title: Text('Version'),
                trailing: Text('alpha 1.0', style: TextStyle(color: Colors.grey.shade400),),
              ),
            ],
          )
          ),),
    );
  }
}