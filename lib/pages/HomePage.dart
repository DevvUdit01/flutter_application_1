import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_application_1/widgets/item_widgets.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(15,(index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("FlopKart"),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummylist[index],
            );
          },
        ),
      ),
     // body: ListView.builder(itemBuilder: itemBuilder)
    drawer: MyDrawer(),
    );
  }
}
