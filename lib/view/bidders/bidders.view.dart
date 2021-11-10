import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procurement/model/bidder.model.dart';
import 'package:procurement/view/bidders/addNewBidder.view.dart';
import 'package:procurement/view/bidders/bidderDetail.view.dart';
import 'package:procurement/view/navigation.view.dart';

class BiddersView extends StatefulWidget {
  const BiddersView({Key? key}) : super(key: key);

  @override
  _BiddersViewState createState() => _BiddersViewState();
}

class _BiddersViewState extends State<BiddersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bidders'),
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
        color: Colors.transparent,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(20),
                  height: 44,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: TextFormField(
                      enableSuggestions: true,
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.primary.withAlpha(40),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search for Bidder',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      )),
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('All Bidders', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                   Text(listAllBidders.length.toString()),
                ],
              ),
            ),
            Expanded(
                flex: 5,
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('ID', style: TextStyle(fontWeight: FontWeight.bold),)),
                      DataColumn(label: Text('LOGO', style: TextStyle(fontWeight: FontWeight.bold),)),
                      DataColumn(label: Text('NAME', style: TextStyle(fontWeight: FontWeight.bold),)),
                      DataColumn(label: Text('DATE CREATED', style: TextStyle(fontWeight: FontWeight.bold),)),
                      DataColumn(label: Text('DESCRIPTION', style: TextStyle(fontWeight: FontWeight.bold),)),
                    ],
                    rows: listAllBidders.map((bidder) => 
                      DataRow(
                        cells: [
                          DataCell(Text(bidder.id)),
                          DataCell(CircleAvatar(backgroundImage: AssetImage(bidder.logo),)),
                          DataCell(Text(bidder.name),),
                          DataCell(Text(bidder.emailAddress)),
                          DataCell(Text(bidder.location)),

                        ]
                        )
                    ).toList(),
                  )
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AddNewBidder();
            }));
          }),
    );
  }
}
