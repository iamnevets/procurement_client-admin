import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procurement/model/tender.model.dart';
import 'package:procurement/view/navigation.view.dart';
import 'package:procurement/view/profile/profile.view.dart';

class TendersView extends StatefulWidget {
  const TendersView({Key? key}) : super(key: key);

  @override
  _TendersViewState createState() => _TendersViewState();
}

class _TendersViewState extends State<TendersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tenders'),
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
                  padding: EdgeInsets.symmetric(horizontal: 300, vertical: 20),
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
                        hintText: 'Search for Tender',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      )),
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'All Tenders',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(listAllTenders.length.toString()),
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
                        DataColumn(label: Text('NAME', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), )),
                        DataColumn(label: Text('ID', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
                        DataColumn(label: Text('DATE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
                        DataColumn(label: Text('PROCURER', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
                      ],
                      rows: listAllTenders
                          .map((tender) => DataRow(cells: [
                                DataCell(Text(tender.name)),
                                DataCell(Text(tender.id)),
                                DataCell(Text(tender.dayCreated + " " + tender.monthCreated + " " + tender.yearCreated)),
                                DataCell(Text(tender.tenderEntity.name)),
                              ]))
                          .toList(),
                    ))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
              
            }));
  }
}
