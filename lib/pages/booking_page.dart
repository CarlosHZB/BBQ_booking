import 'package:churrasqueira/controllers/barbecue_controller.dart';
import 'package:churrasqueira/widgets/card_book.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BarbecueController>(builder: (_, controller, __) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(252, 41, 40, 40),
        appBar: AppBar(
          title: const Text(
            'Churrasqueiras disponíveis',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: ListView(
              children: List.generate(
                  controller.barbecues.length,
                  (index) => CardBook(
                        // barbecue: controller.barbecues[index],
                        index: index,
                      ))),
        ),
      );
    });
  }
}
