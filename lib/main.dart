import 'package:flutter/material.dart';
import 'package:list_type_widgets/card_list_tile.dart';
import 'package:list_type_widgets/list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CardListTile(),
      routes: {
        '/home': (context) => const CardListTile(),
        '/list-view': (context) => UsingListView(),
      },
    );
  }
}
