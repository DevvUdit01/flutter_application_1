import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widgets.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
void initstate(){
  super.initState();
  loadData();
}

loadData()async{
  await Future.delayed(Duration(seconds:2));
   final catalogjson = await rootBundle.loadString("assets/files/catalog.json");
   final decodeData = jsonDecode(catalogjson);
   var productsData = decodeData("products");
   CatalogModel.items= List.from(productsData)
   .map<Item>((item) => Item.fromMap(item)).toList();
   setState(() {});

}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlopKart"),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)? ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ):Center(child: CircularProgressIndicator(),),
      ),
     // body: ListView.builder(itemBuilder: itemBuilder)
    drawer: MyDrawer(),
    );
  }
}
