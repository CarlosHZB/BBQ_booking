import 'package:churrasqueira/pages/form_page.dart';
import 'package:churrasqueira/theme.dart';
import 'package:flutter/material.dart';

class CardBook extends StatefulWidget {
  final String id;

  const CardBook({Key? key, required this.id}) : super(key: key);

  @override
  State<CardBook> createState() => _CardBookState();
}

change(context, id) {
  _containerColor = _containerColor == MyTheme.color.withOpacity(.2)
      ? Colors.red
      : MyTheme.color.withOpacity(.2);
  Navigator.push(context,
      MaterialPageRoute(builder: (BuildContext context) => FormPage(id: id, c: _containerColor)));
}

Color _containerColor = MyTheme.color.withOpacity(.2);

class _CardBookState extends State<CardBook> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        change(context, widget.id);
      }),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Container(
        width: double.infinity,
        height: 95,
        margin: const EdgeInsets.all(11.5),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: _containerColor,
            image: const DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage('images/churrasqGrande.jpg'),
                alignment: Alignment.topRight)),
        child: Padding(
          padding: const EdgeInsets.only(left: 3.0, top: 3.0),
          child: Center(
            child: Text(
              widget.id,
              style: const TextStyle(fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}
