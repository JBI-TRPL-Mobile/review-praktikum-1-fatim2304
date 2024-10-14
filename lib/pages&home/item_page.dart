import 'package:flutter/material.dart';
import 'package:cd_tugaspraktikum/model/item.dart'; 

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
        appBar: AppBar(
          title: Text(item.name),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: item.name,
                  child: Image.network(item.imageUrl),
                ),
                Text('name: ${item.name}'),
                Text('Rating: ${item.rating}'),
              ],
            ),
            ),
        );
    }
}