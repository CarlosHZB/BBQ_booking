import 'package:churrasqueira/widgets/card_book.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final list = ['Churrasqueira de tijolo grande', 'Churrasqueira PP', 'Churrasqueira Mojang',
    'Churrasqueira Andrey', 'Churrasqueira Chevers', 'Churrasqueira Agaragã', 'Churrasqueira Lux',
    'Churrasqueira 3 brothers'];

    return Scaffold(
      backgroundColor: const Color.fromARGB(252, 41, 40, 40),
      appBar: AppBar(
        title: const Text('Churrasqueiras disponíveis', style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 48.0),
        child: ListView(
          children: [
          for(var i=0; i<list.length ; i++)
            CardBook(id: list[i]),
          ],
        ),
      ),
    );
  }
}