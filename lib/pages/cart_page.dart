import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/store..dart';
import 'package:flutter_application_1/models/Cart.dart';
import 'package:velocity_x/velocity_x.dart';

class cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          VxBuilder(
            mutations: {RemoveMutation},
           builder: (context, _, __) {
              return "\$${_cart.totalPrice}"
                  .text
                  .xl5
                  .color(context.theme.hintColor)
                  .make();
            },
          ),
          30.widthBox,
          ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: "Buying is not supported yet".text.make(),
              ));
          }, 
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

class _CartList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
    ? "Nothing to Show".text.xl3.makeCentered()
    : ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () =>
            RemoveMutation(_cart.items[index]),
           ),
      title: _cart.items[index].name.text.make(),
      )
      );
  }
}