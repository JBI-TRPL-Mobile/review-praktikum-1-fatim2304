import 'package:flutter/material.dart';
import 'package:cd_tugaspraktikum/pages&home/home.dart';
import 'package:cd_tugaspraktikum/pages&home/item_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Koleksi buku',
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/item': (context) => ItemPage(),
        },
        
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (context) => HomePage());
          },
        );
    }
}