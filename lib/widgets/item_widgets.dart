import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}):
   assert(item != null),
   super(key: key);

  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        onTap:() { print("item Pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "Rs ${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight:FontWeight.bold, 
          ),
        ),
        
      ),
    );
  }
}