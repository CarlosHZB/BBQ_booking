import 'package:churrasqueira/pages/booking_page.dart';
import 'package:churrasqueira/widgets/home_button.dart';
import 'package:flutter/material.dart';
import 'package:churrasqueira/theme.dart';

class ChoosePage extends StatelessWidget {
  const ChoosePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(252, 41, 40, 40),
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: RichText(text: TextSpan(
                            text: 'Reserva de ',
                            style: TextStyle(
                                fontSize: 30, decoration: TextDecoration.overline, color: MyTheme.color.withOpacity(.6)),
                            children: const [
                          TextSpan(
                            text: 'churrasqueiras',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ])),
                ),
              ],
            ),
            HomeButton(
              title: 'Reservar', 
              color: Colors.white,
              action: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => const BookingPage()
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}