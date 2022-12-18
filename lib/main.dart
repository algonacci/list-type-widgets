import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:list_type_widgets/card_list_tile.dart';
import 'package:list_type_widgets/fetch_dart.dart';
import 'package:list_type_widgets/home.dart';
import 'package:list_type_widgets/layout_problem.dart';
import 'package:list_type_widgets/list_view.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.blue
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
  // ..customAnimation = CustomAnimation();
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
      home: const HomePage(),
      routes: {
        '/card-list-tile': (context) => const CardListTile(),
        '/list-view': (context) => UsingListView(),
        '/fetch-data': (context) => const FetchData(),
        '/layout-problem': (context) => const LayoutProblem(),
      },
      builder: EasyLoading.init(),
    );
  }
}
