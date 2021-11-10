import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procurement/model/bid.model.dart';
import 'package:procurement/view/navigation.view.dart';
import 'package:procurement/view/profile/profile.view.dart';

class BidsView extends StatefulWidget {
  const BidsView({Key? key}) : super(key: key);

  @override
  _BidsViewState createState() => _BidsViewState();
}

class _BidsViewState extends State<BidsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bids'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProfileView();
                  }));
                },
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 20,
                  child: Icon(Icons.person_outlined),
                ),
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
                        hintText: 'Search for Bids',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      )),
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'All Bids',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(listAllBids.length.toString()),
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
                        DataColumn(
                            label: Text(
                          'NAME',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        DataColumn(
                            label: Text(
                          'ID',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        DataColumn(
                            label: Text(
                          'DATE CREATED',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        DataColumn(
                            label: Text(
                          'DESCRIPTION',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ],
                      rows: listAllBids
                          .map((bid) => DataRow(cells: [
                                DataCell(
                                  Text(bid.name),
                                ),
                                DataCell(Text(bid.id)),
                                DataCell(Text(bid.dayCreated + " " + bid.monthCreated + " " + bid.yearCreated)),
                                DataCell(Text(bid.description)),
                              ]))
                          .toList(),
                    ))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
              return addNewBid(context);
            }));

  }

  addNewBid(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Add New Bid'),
            content: Container(
              height: 500,
              width: 600,
              child: Column(
                children: [
                  Container(
                    // padding: EdgeInsets.all(20),
                    height: 44,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: TextFormField(
                        enableSuggestions: true,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Theme.of(context).colorScheme.primary.withAlpha(40),
                          hintText: 'Bid ID',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 44,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: TextFormField(
                        enableSuggestions: true,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Theme.of(context).colorScheme.primary.withAlpha(40),
                          hintText: 'Bid Name',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 44,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: TextFormField(
                        enableSuggestions: true,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Theme.of(context).colorScheme.primary.withAlpha(40),
                          hintText: 'Description',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 44,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: TextFormField(
                        enableSuggestions: true,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Theme.of(context).colorScheme.primary.withAlpha(40),
                          hintText: 'Day',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 44,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: TextFormField(
                        enableSuggestions: true,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Theme.of(context).colorScheme.primary.withAlpha(40),
                          hintText: 'Month',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 44,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: TextFormField(
                        enableSuggestions: true,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Theme.of(context).colorScheme.primary.withAlpha(40),
                          hintText: 'Year',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        )),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('CANCEL')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return BidsView();
                    }));
                  },
                  child: Text('ADD BID'))
            ],
          );
        });
  }
}
