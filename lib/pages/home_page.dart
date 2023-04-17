import 'package:churrasqueira/pages/choose_pade.dart';
import 'package:flutter/material.dart';
import 'package:churrasqueira/theme.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(252, 41, 40, 40),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyTheme.color.withOpacity(.2),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: size.height * 0.8,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 8),
                height: size.height * 0.2 - 20,
                decoration: BoxDecoration(
                    color: MyTheme.color.withOpacity(.2),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36))),
                child: Row(children: [
                  const Text(
                    "Bem-vindo(a) de volta!",
                    style: TextStyle(fontSize: 25),
                  ),
                  const Spacer(),
                  Image.asset('images/logo.png'),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180.0),
                child: Padding(
                  padding: const EdgeInsets.all(11.5),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ChoosePage()),
                        ),
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 108, 8, 126),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: const Color.fromARGB(255, 108, 8, 126),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Center(
                                child: Text("  Reserva de churrasqueira",
                                    style: TextStyle(fontSize: 30))),
                          ),
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 108, 8, 126),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: const Color.fromARGB(255, 108, 8, 126),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Center(
                              child: Text("+",
                                  style: TextStyle(fontSize: 30))),
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 108, 8, 126),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: const Color.fromARGB(255, 108, 8, 126),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Center(
                              child: Text("+",
                                  style: TextStyle(fontSize: 30))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
