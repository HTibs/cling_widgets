import 'package:flutter/material.dart';

import 'activities/createCardActivity.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // define theme of the app here
        primarySwatch: Colors.blue,
      ),
      routes: {'/': (BuildContext context) => CreateCardActivity()},
    );
  }
}
