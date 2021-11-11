import 'package:flutter/material.dart';
import 'package:procurement/model/bid.model.dart';
import 'package:procurement/model/bidder.model.dart';
import 'package:procurement/model/entity.model.dart';
import 'package:procurement/model/tender.model.dart';
import 'package:procurement/view/navigation.view.dart';
import 'package:procurement/view/procurers/procurerDetail.view.dart';
import 'package:procurement/view/profile/profile.view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({ Key? key }) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        title: Text('Dashboard'),
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
          children: 
              [
                Expanded(
                child: Row(
                  children: [
              Expanded(
          flex: 7,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 200,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 200,
                          height: double.infinity,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Icon(Icons.more_horiz)],)),
                                Container(width: 20, height: 20, child: Image(image: AssetImage('assets/img/folder_icon.png'), fit: BoxFit.contain,),),
                                Container(
                                  width: double.infinity,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                     Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(listAllBids.length.toString(), style: TextStyle(fontSize: 25),),
                                          Text('Total Bids', style: Theme.of(context).textTheme.subtitle1,)
                                       ],
                                     )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: double.infinity,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Icon(Icons.more_horiz)],)),
                                Container(width: 20, height: 20, child: Image(image: AssetImage('assets/img/folder_icon.png'), fit: BoxFit.contain,),),
                                Container(
                                  width: double.infinity,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                     Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(listAllTenders.length.toString(), style: TextStyle(fontSize: 25),),
                                          Text('Total Tenders', style: Theme.of(context).textTheme.subtitle1,)
                                       ],
                                     )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: double.infinity,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Icon(Icons.more_horiz)],)),
                                Container(width: 20, height: 20, child: Image(image: AssetImage('assets/img/folder_icon.png'), fit: BoxFit.contain,),),
                                Container(
                                  width: double.infinity,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                     Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(listAllProcurerEntitys.length.toString(), style: TextStyle(fontSize: 25),),
                                          Text('Entities', style: Theme.of(context).textTheme.subtitle1,)
                                       ],
                                     )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: double.infinity,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Icon(Icons.more_horiz)],)),
                                Container(width: 20, height: 20, child: Image(image: AssetImage('assets/img/folder_icon.png'), fit: BoxFit.contain,),),
                                Container(
                                  width: double.infinity,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                     Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(listAllBidders.length.toString(), style: TextStyle(fontSize: 25),),
                                          Text('Suppliers', style: Theme.of(context).textTheme.subtitle1,)
                                       ],
                                     )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Ongoing Tenders', style: TextStyle(fontSize: 32,),),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: 
                        [
                          Container(
                          color: Colors.transparent,
                          child: 
                              DataTable(columns: [
                                DataColumn(label: Text('Project')),
                                DataColumn(label: Text('Deadline')),
                                DataColumn(label: Text('Suppliers')),
                                DataColumn(label: Text('Budget')),
                                DataColumn(label: Text('')),
                              ], 
                              rows: listAllProcurerEntitys.map((tender) => 
                                DataRow(cells: [
                                  DataCell(Text(tender.name)),
                                  DataCell(
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Mar 24, 2015'), 
                                        Text('in 6 Months', style: TextStyle(color: Colors.grey.shade400),),
                                      ],
                                    )
                                  ),
                                  DataCell(Text(tender.id)),
                                  DataCell(Text("ghc901.10")),
                                  DataCell(ElevatedButton.icon(
                                    
                                    label: Text('Delete', style: TextStyle(color: Colors.white,)),
                                    icon: Icon(Icons.delete, color: Colors.white,),
                                    onPressed: (){}, ))
                                ])
                              ).toList(),
                              )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          )
              ),
              Expanded(
          flex: 3,
          child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.transparent,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.end, children: [Icon(Icons.more_horiz),],),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Storage', style: Theme.of(context).textTheme.subtitle1,),  
                          Text('280GB', style: Theme.of(context).textTheme.headline4,),  
                        ],),
                        Expanded(child: Container()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blue.shade100.withAlpha(50),
                                  child: Icon(Icons.upload_file, color: Colors.blue,)),
                                Text('21,209')
                              ],
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blue.shade100.withAlpha(50),
                                  child: Icon(Icons.file_download, color: Colors.blue,)),
                                Text('48,721')
                              ],
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blue.shade100.withAlpha(50),
                                  child: Icon(Icons.folder_open, color: Colors.blue,)),
                                Text('8921')
                              ],
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blue.shade100.withAlpha(50),
                                  child: Icon(Icons.file_upload, color: Colors.blue,)),
                                Text('21,209')
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Expanded(child: Container(
                    color: Colors.transparent,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: listAllProcurerEntitys.length,
                      itemBuilder: (BuildContext context, index){
                        return Padding(
                          padding: EdgeInsets.all(10.0),
                          child: ListTile(
                            leading: CircleAvatar(backgroundImage: AssetImage(listAllProcurerEntitys[index].logo),),
                            title: Text(listAllProcurerEntitys[index].name),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){return ProcurerDetailView (selectedProcurer: listAllProcurerEntitys[index],);}));
                            },
                          ),
                        );
                      }),
                  ))
                ],
              ),  
          )  
              )
                  ],
                ),
              ),
            ],
        ),
      )
    );
  }
}