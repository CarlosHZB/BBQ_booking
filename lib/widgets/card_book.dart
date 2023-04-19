import 'package:churrasqueira/controllers/barbecue_controller.dart';
import 'package:churrasqueira/pages/form_page.dart';
import 'package:churrasqueira/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardBook extends StatefulWidget {
  final int index;

  const CardBook({Key? key, required this.index}) : super(key: key);

  @override
  State<CardBook> createState() => _CardBookState();
}

class _CardBookState extends State<CardBook> {
  @override
  Widget build(BuildContext context) {
    final barbecueController = Provider.of<BarbecueController>(context);
    final barbecue = barbecueController.barbecues[widget.index];
    return InkWell(
      onTap: () {
        setState(() {
          barbecue.isReserved = !barbecue.isReserved;
          context.read<BarbecueController>().changeStatusBarbecue(widget.index);
        });
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => FormPage(
                      index: widget.index,
                    )));
      },
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Container(
        width: double.infinity,
        height: 95,
        margin: const EdgeInsets.all(11.5),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: barbecue.isReserved
                ? Colors.red
                : MyTheme.color.withOpacity(.2),
            image: const DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/images/churrasqGrande.jpg'),
                alignment: Alignment.topRight)),
        child: Padding(
          padding: const EdgeInsets.only(left: 3.0, top: 3.0),
          child: Center(
            child: Text(
              barbecue.label,
              style: const TextStyle(fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}
