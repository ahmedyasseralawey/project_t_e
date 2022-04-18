import 'package:flutter/material.dart';
import 'package:progect_t_e/scrren/addpost.dart';
import 'package:progect_t_e/scrren/postes.dart';
import 'package:progect_t_e/theme/shedcolor.dart';

class profilehome extends StatefulWidget {
  const profilehome({Key? key}) : super(key: key);

  @override
  _HomebageState createState() => _HomebageState();
}

class _HomebageState extends State<profilehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: background,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: MediaQuery.of(context).size.height / 2),
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
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
                    child: const Text('add post'),
                  ),
                ),
                Postes(),
                Postes(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
