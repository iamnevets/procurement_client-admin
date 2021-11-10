import 'package:flutter/material.dart';
import 'package:procurement/model/entity.model.dart';

class ProcurerDetailView extends StatelessWidget {
  ProcurerDetailView({Key? key, required this.selectedProcurer}) : super(key: key);

  final ProcurerEntity selectedProcurer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedProcurer.name),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: Icon(Icons.account_circle),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Theme.of(context).colorScheme.primary,
              child: Center(
                child: Text(
                  selectedProcurer.name,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Text( 'ID: ' + selectedProcurer.id, style: TextStyle(fontSize: 20),)
            ),
            Divider(),
            ListTile(
              leading: Text('Location: ' +selectedProcurer.location, style: TextStyle(fontSize: 20),)
            ),
            Divider(),
            ListTile(
              leading: Text('Address: ' + selectedProcurer.address, style: TextStyle(fontSize: 20),)
            ),
            Divider(),
            ListTile(
              leading: Text('Email Address: ' +selectedProcurer.emailAddress, style: TextStyle(fontSize: 20),)
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Text(
              selectedProcurer.about,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
