import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Themes.dart';
import 'package:velocity_x/velocity_x.dart';

class cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: "Cart".text.make(),
        ),

      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          "\$9999".text.xl5.color(context.theme.hintColor).make(),
          30.widthBox,
          ElevatedButton(onPressed: (){}, 
          style: ButtonStyle(
            backgroundColor: 
                MaterialStateProperty.all(context.theme.focusColor)),
          child: "Buy".text.color(Colors.white).make(),
          ).w32(context)
        ],
      ),
      
    );
  }
}

class _CartList extends StatefulWidget {
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
           ),
      title: "Item 1".text.make(),
      )
      );
  }
}