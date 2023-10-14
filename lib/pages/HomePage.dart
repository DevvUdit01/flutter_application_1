// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Core/store..dart';
import 'package:flutter_application_1/models/Cart.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/home_widgets/Catalog_Header.dart';
import 'package:flutter_application_1/widgets/home_widgets/Catalog_List.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url= "";
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
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation,RemoveMutation},
        builder:(context,_,__) => FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          backgroundColor: MyTheme.lightBliush,
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.white,
            ),
        ).badge(
          color:Vx.gray200,
          size: 22,
          count: _cart.items.length,
          textStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )
        ),
      ),
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