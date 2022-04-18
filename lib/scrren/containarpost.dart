import 'package:flutter/material.dart';
import 'addpost.dart';

class creatpost extends StatefulWidget {
  const creatpost({Key? key}) : super(key: key);

  @override
  _creatpostState createState() => _creatpostState();
}

class _creatpostState extends State<creatpost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width,
              horizontal: MediaQuery.of(context).size.height),
          color: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return const addpost();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
