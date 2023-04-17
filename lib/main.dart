import 'package:churrasqueira/pages/home_page.dart';
import 'package:churrasqueira/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reserva de churrasqueira',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.theme,
      home: const HomePage(),
    );
  }
  }

