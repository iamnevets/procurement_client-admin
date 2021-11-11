import 'dart:html';

import 'package:flutter/material.dart';
import 'package:procurement/model/category.view.dart';
import 'package:procurement/view/navigation.view.dart';
import 'package:procurement/view/profile/profile.view.dart';

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
                    padding: EdgeInsets.symmetric(horizontal: 250),
                    child: ListView.builder(
                        itemCount: listAllCategories.length,
                        itemBuilder: (BuildContext context, index) {
                          return Column(
                            children: [
                              ListTile(
                                title: Text(listAllCategories[index].name),
                                subtitle: Text(listAllCategories[index].id),
                                trailing: ElevatedButton.icon(onPressed: (){
                                  showCategoryModal(context, listAllCategories[index]);
                                }, icon: Icon(Icons.edit), label: Text('Edit')),
                              ),
                              Divider()
                            ],
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

showCategoryModal(BuildContext context, Category selectedCategory){
  showModalBottomSheet(context: context, builder: (context){
    return Container(
      height: 300 ,
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Edit Category', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 20),
            child: Container(
                      height: 44,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: TextFormField(
                          initialValue: selectedCategory.name,
                          enableSuggestions: true,
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.primary.withAlpha(40),
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Edit Category Name',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(20),
                          )),
                    ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 44,
                width: 100,
                child: TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('CANCEL')),
              ),
              Container(
                height: 44,
                width: 100,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text('SAVE'),
                ),
              )
            ],
          )
        ],
      ),
    );
  });
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
