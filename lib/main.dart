import 'package:demo2/pages/add.dart';
import 'package:demo2/pages/app.dart';
import 'package:demo2/pages/more.dart';
import 'package:flutter/material.dart';

void main() {
  const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainAppPage(),
        '/add': (context) => const AddPage(),
        '/more': (context) => const MorePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
