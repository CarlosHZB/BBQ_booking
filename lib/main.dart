import 'package:churrasqueira/controllers/barbecue_controller.dart';
import 'package:churrasqueira/pages/home_page.dart';
import 'package:churrasqueira/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  @override
  Widget build(BuildContext context) {
      Provider.debugCheckInvalidValueType = null;
    return ChangeNotifierProvider(
      create: (_) => BarbecueController(),
      child: MaterialApp(
        title: 'Reserva de churrasqueira',
        debugShowCheckedModeBanner: false,
        theme: MyTheme.theme,
        home: const HomePage(),
      ),
    );
  }
}
