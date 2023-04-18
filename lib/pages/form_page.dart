import 'package:churrasqueira/controllers/barbecue_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class FormPage extends StatefulWidget {
  final int index;
  const FormPage({Key? key, required this.index}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

String s = "Confirmar reserva";

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BarbecueController>(builder: (_, controller, __) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(252, 41, 40, 40),
        appBar: AppBar(
          title: Text(controller.barbecues[widget.index].label,
              style: const TextStyle(color: Colors.white)),
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
                  onPressed: () {
                    controller.changeStatusBarbecue(widget.index);
                  },
                  child: Text(s),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
