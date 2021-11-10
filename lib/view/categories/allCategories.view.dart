import 'package:flutter/material.dart';
import 'package:procurement/model/category.view.dart';
import 'package:procurement/view/navigation.view.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  _CategoriesViewState createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Categories'),
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
                          hintText: 'Search for Category',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        )),
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      'All Categories',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Text(listAllCategories.length.toString()),
                  ],
                ),
              ),
              Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ListView.builder(
                        itemCount: listAllCategories.length,
                        itemBuilder: (BuildContext context, index) {
                          return ListTile(
                            title: Text(listAllCategories[index].name),
                            subtitle: Text(listAllCategories[index].id),
                          );
                        }),
                  ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              addNewCategory(context);
            }));
  }
}

addNewCategory(context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Category'),
          content: Container(
            height: 200,
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
                        hintText: 'Category ID',
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
                        hintText: 'Category Name',
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
                    return CategoriesView();
                  }));
                },
                child: Text('ADD CATEGORY'))
          ],
        );
      });
}
