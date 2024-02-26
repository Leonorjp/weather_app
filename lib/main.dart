import 'package:flutter/material.dart';
import 'package:weather_app_tutorial/pages/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white),
        focusColor: Colors.white,
        primaryColor: Colors.white,
        useMaterial3: true,
      ),
      home: const ListPage(),
    );
  }
}
