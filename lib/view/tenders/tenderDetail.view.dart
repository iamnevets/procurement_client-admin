import 'package:flutter/material.dart';
import 'package:procurement/model/tender.model.dart';

class TenderDetailView extends StatelessWidget {
  const TenderDetailView({Key? key, required this.selectedTender}) : super(key: key);

  final Tender selectedTender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedTender.name),
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
                  selectedTender.name,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
                leading: Text(
              'ID: ' + selectedTender.id,
              style: TextStyle(fontSize: 20),
            )),
            Divider(),
            ListTile(
                leading: Text(
              'Date Created: ' + selectedTender.dayCreated + " " + selectedTender.monthCreated + " " + selectedTender.yearCreated,
              style: TextStyle(fontSize: 20),
            )),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Text(
              selectedTender.description,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
