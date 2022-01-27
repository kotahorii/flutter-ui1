import 'package:flutter/material.dart';
import 'package:flutter_ui/PostHeader.dart';
import 'package:flutter_ui/SideNavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: AdminMobilePage(),
    );
  }
}

class AdminMobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        SideNavigation(),
        const VerticalDivider(
          thickness: 1,
          width: 1,
        ),
        Expanded(child: PostList())
      ]),
    );
  }
}
