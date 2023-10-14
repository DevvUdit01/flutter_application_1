// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/models/catalog.dart';

class homeDetailPage extends StatelessWidget {
  final Item Catalog;
  const homeDetailPage({Key? key,required this.Catalog,}) :
  assert(Catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        elevation: 0),
      backgroundColor: context.canvasColor,
      bottomNavigationBar:  Container(
        color: context.cardColor,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$ ${Catalog.price}".text.bold.xl4.red800.make(),
                  AddToCart(catalog: Catalog,                                    //problematic
                  ).wh(120,50)
                ],
              ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children:[
            Hero(tag: Key(Catalog.id.toString()), 
            child:Image.network(Catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 10,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                   color: context.cardColor,
                   width: context.screenWidth,
                   child: Column(
                    children: [
                      Catalog.name.text.xl.color(context.theme.hintColor).bold.make(),
                      Catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                      10.heightBox,
                      "Dolor uio h relugeu rou dkl fd  ufsul  svdoruu rguyeg zdx j efte eofe rep b[tn nribeiob jbob ytuuiv gkyf ttdj uyjh gugg glig ugl uggft"
                      .text.textStyle(context.captionStyle).make().p16()
                    ],
                   ).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
