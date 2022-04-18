import 'package:flutter/material.dart';
import 'package:progect_t_e/scrren/home.dart';
import 'package:progect_t_e/scrren/sgin_up.dart';
import 'package:progect_t_e/theme/shedcolor.dart';
import 'package:progect_t_e/widge/CoustomButtom.dart';

class Welcombage extends StatefulWidget {
  const Welcombage({Key? key}) : super(key: key);

  @override
  _WelcombageState createState() => _WelcombageState();
}

class _WelcombageState extends State<Welcombage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Container(
        margin: const EdgeInsets.only(left: 30, right: 5, top: 80, bottom: 20),
        child: Form(
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 20, right: 20),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/gaver.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Welcome to travel experiences',
                  style: TextStyle(
                      color: perymarycolor,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              CustomButton(
                'long in',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return const Homebage();
                      },
                    ),
                  );
                },
              ),
              CustomButton(
                'sing up',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return const SignUpPage();
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
