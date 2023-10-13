// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/widgets/home_widgets/Catalog_Header.dart';
import 'package:flutter_application_1/widgets/home_widgets/Catalog_List.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/models/catalog.dart';
// import 'package:flutter_application_1/widgets/drawer.dart';
// import 'package:flutter_application_1/widgets/item_widgets.dart';
import 'package:flutter_application_1/widgets/themes.dart';

class HomePage extends StatefulWidget {
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
void initState(){
  super.initState();
  loadData();
}

loadData()async{
  await Future.delayed(Duration(seconds:2));
   final catalogjson = await rootBundle.loadString("assets/files/catalog.json");
   final decodeData = jsonDecode(catalogjson);
   var productsData = decodeData["products"];
   CatalogModel.items= List.from(productsData)
   .map<Item>((item) => Item.fromMap(item)).toList();
   setState(() {});

}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            children: [
              CatalogHeader(),
              if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
              CatalogList().py16().expand()
              else
              CircularProgressIndicator().centered().py16().expand(),
            ],
          ),
        ),
      ),
        );
  }
}