import 'package:flutter/material.dart';
import 'package:procurement/model/entity.model.dart';
import 'package:procurement/view/navigation.view.dart';

class ProcurersView extends StatefulWidget {
  const ProcurersView({Key? key}) : super(key: key);

  @override
  _ProcurersViewState createState() => _ProcurersViewState();
}

class _ProcurersViewState extends State<ProcurersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Procurers'),
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
                        hintText: 'Search for Procurer',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      )),
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'All Procurers',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(listAllProcurerEntitys.length.toString()),
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
                          'ID',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        DataColumn(
                            label: Text(
                          'LOGO',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        DataColumn(
                            label: Text(
                          'NAME',
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
                      rows: listAllProcurerEntitys
                          .map((procurer) => DataRow(cells: [
                                DataCell(Text(procurer.id)),
                                DataCell(CircleAvatar(
                                  backgroundImage: AssetImage(procurer.logo),
                                )),
                                DataCell(
                                  Text(procurer.name),
                                ),
                                DataCell(Text(procurer.emailAddress)),
                                DataCell(Text(procurer.location)),
                              ]))
                          .toList(),
                    ))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            addNewProcurer(context);
          }),
    );
  }

  addNewProcurer(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Add Procurer'),
            content: Column(
              
            ),
            actions: [],
          );
        });
  }
}
