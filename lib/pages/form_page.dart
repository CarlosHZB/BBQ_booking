import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:churrasqueira/theme.dart';

class FormPage extends StatefulWidget {
  final String id;
  final Color c;
  const FormPage({Key? key, required this.id, required this.c})
      : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

changeBtn(context,c) {
  if (c ==  MyTheme.color.withOpacity(.2)){
    s="Confirmar reserva";
  }else{
    s="Cancelar reserva";
  }
  Navigator.pop(context);
}
String s="Confirmar reserva";

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(252, 41, 40, 40),
      appBar: AppBar(
        title: Text(widget.id, style: const TextStyle(color: Colors.white)),
        automaticallyImplyLeading: false,
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(11.5),
              child: TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))
                ],
                decoration: const InputDecoration(
                    hintText: "Digite seu CPF   (apenas números)"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11.5),
              child: TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))
                ],
                decoration: const InputDecoration(
                    hintText: "Digite a data de reserva   (apenas números)"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: ElevatedButton(
                onPressed: () => setState(() {
                  changeBtn(context, widget.c);
                }),
                child: Text(s),
              ),
            )
          ],
        ),
      ),
    );
  }
}
