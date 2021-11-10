import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:procurement/model/bid.model.dart';

class BidDetailView extends StatelessWidget {
  BidDetailView({Key? key, required this.selectedBid}) : super(key: key);

  final Bid selectedBid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(selectedBid.name),
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
                child:  Text(selectedBid.name, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Text( 'ID: ' + selectedBid.id, style: TextStyle(fontSize: 20),)
            ),
            Divider(),
            ListTile(
              leading: Text('Date Created: ' + selectedBid.dayCreated + " " + selectedBid.monthCreated + " " + selectedBid.yearCreated, style: TextStyle(fontSize: 20),)
            ),
            Divider(),

            SizedBox(height: 20,),
            Text(selectedBid.description, style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
