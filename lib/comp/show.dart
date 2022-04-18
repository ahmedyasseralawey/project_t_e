
import 'package:flutter/material.dart';
import 'package:progect_t_e/scrren/viwe.dart';
showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: const Text("Log Out"),
    onPressed: () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const HomeView()));
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Log out"),
    content: const Text("Are you sure you want to log out?"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(

    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}