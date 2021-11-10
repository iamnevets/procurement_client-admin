import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:procurement/model/bidder.model.dart';

class BidderDetailView extends StatelessWidget {
  BidderDetailView({Key? key, required this.selectedBidder}) : super(key: key);

  final Bidder selectedBidder;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(selectedBidder.name),
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
                child:  Text(selectedBidder.name, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Text( 'ID: ' + selectedBidder.id, style: TextStyle(fontSize: 20),)
            ),
            Divider(),
            ListTile(
              leading: Text('Location: ' +selectedBidder.location, style: TextStyle(fontSize: 20),)
            ),
            Divider(),
            ListTile(
              leading: Text('Address: ' +selectedBidder.address, style: TextStyle(fontSize: 20),)
            ),
            Divider(),
            ListTile(
              leading: Text('Email Address: ' +selectedBidder.emailAddress, style: TextStyle(fontSize: 20),)
            ),
            Divider(),
            
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contact'),
                  Column(
                    children: selectedBidder.contact.map((contact) => 
                      Text(contact, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                    ).toList()
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),
            Text(selectedBidder.about, style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
