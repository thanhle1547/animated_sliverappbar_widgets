import 'package:flutter/material.dart';

import 'my_home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated SliverAppBar\'s Widgets',
      theme: ThemeData(
        primaryColor: const Color(0xfffcfcfc),
      ),
      home: const MyHomePage(),
    );
  }
}
