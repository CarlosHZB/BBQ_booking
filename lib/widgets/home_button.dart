import 'package:flutter/material.dart';
import 'package:churrasqueira/theme.dart';

class HomeButton extends StatelessWidget {
  final String title;
  final Color color;
  final Function action;

  const HomeButton(
      {Key? key,
      required this.title,
      required this.color,
      required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: (OutlinedButton(
          style: MyTheme.outlineButtonStyle(color: color),
          onPressed: () => action(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 20),
              )
            ],
          ))),
    );
  }
}
