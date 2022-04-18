
import 'package:flutter/material.dart';
import 'package:progect_t_e/comp/sgin_buttom.dart';
import 'package:progect_t_e/scrren/firstp.dart';
import 'package:progect_t_e/scrren/sgin_up.dart';
import 'package:progect_t_e/theme/g.dart';
import 'package:progect_t_e/theme/shedcolor.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final _formKey = GlobalKey<FormState>();

  late bool _passwordVisible;

  @override
  void initState() {
    // TODO: implement initState
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            color: kBackground,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage('travel.jpeg'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Welcome To Travellers Exp",
                    style: TextStyle(
                        fontSize: 36,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 40, right: 40),
                    child: TextFormField(

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: kTextFormField,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Enter your email',
                        labelText: 'Email',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: kTextFormField),
                          gapPadding: 10,
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: background,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 40, right: 40),
                    child: TextFormField(

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                          fillColor: kTextFormField,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: kTextFormField),
                            gapPadding: 10,
                          ),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: kBackground,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: kBackground,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          )),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  SingButton(
                    text: 'sing in',
                    color: kTextFormField,
                    onPressed: () {
                      setState(() {

                      });
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => const FirstPage()));
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Builder(
                    builder: (BuildContext context) => SingButton(
                        text: 'sing up',
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => const SignUpPage()));
                        },
                        color: kTextFormField),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}