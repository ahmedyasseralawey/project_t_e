
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:progect_t_e/comp/my_drawer.dart';
import 'package:progect_t_e/comp/my_text.dart';
import 'package:progect_t_e/comp/sgin_buttom.dart';
import 'package:progect_t_e/theme/g.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: kBlack,
          elevation: 50,
          iconTheme: const IconThemeData(color: kGold),
        ),
        endDrawer: const SizedBox(width: 220, child: MyDrawer()),
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("plane.jpeg"),
                  fit: BoxFit.cover)),
          child: Form(

            child: ListView(
              children: [
                const MyTextField(
                  text: 'Enter Your Full Name',
                ),
                const MyTextField(
                  text: 'Enter Your Email or Phone',
                ),
                const MyTextField(
                  text: 'Enter Your Password',
                ),
                const MyTextField(
                  text: 'confirm password',
                ),
                const MyTextField(
                  text: 'language',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GenderButton('Male'),
                      const SizedBox(
                        width: 50,
                      ),
                      GenderButton('FeMale'),
                    ],
                  ),
                ),
                const MyTextField(
                  text: 'Location',
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 75, right: 75),
                  child: SingButton(
                    text: 'Continue',
                    color: kBackground,
                    onPressed: () async {},
                    textColor: kBlack,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  SizedBox GenderButton(String text) {
    return SizedBox(
      height: 50,
      width: 120,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            (isMale && text == 'Male') || (!isMale && text == 'FeMale')
                ? kTextFormField
                : kBackground,
          ),
          padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
        ),
        onPressed: () {
          setState(() {
            isMale = text == 'Male' ? true : false;
          });
        },
        child: Text(
          text == 'Male' ? 'Male' : 'Female',
          style: const TextStyle(fontSize: 16, color: kBlack),
        ),
      ),
    );
  }
}