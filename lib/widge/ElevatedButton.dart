import 'package:flutter/material.dart';


class Elevated extends StatefulWidget {
  final Function ontap;
  final String x;
  final Color color;
  const Elevated(this.color, this.ontap, this.x);
  @override
  _ElevatedState createState() => _ElevatedState();
}

class _ElevatedState extends State<Elevated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            padding: const EdgeInsets.only(bottom: 5),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 30,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF272537), onPrimary: Colors.white),
                    onPressed: () {
                      widget.ontap();
                    },
                    child: const Text(
                      'x',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )))),
      ]),
    );
  }
}
