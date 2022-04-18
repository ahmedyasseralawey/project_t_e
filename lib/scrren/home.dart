import 'package:flutter/material.dart';
import 'package:progect_t_e/comp/my_drawer.dart';
import 'package:progect_t_e/scrren/addpost.dart';
import 'package:progect_t_e/scrren/country.dart';
import 'package:progect_t_e/scrren/favoet.dart';
import 'package:progect_t_e/scrren/postes.dart';
import 'package:progect_t_e/theme/shedcolor.dart';

class Homebage extends StatefulWidget {
  const Homebage({Key? key}) : super(key: key);

  @override
  _HomebageState createState() => _HomebageState();
}

class _HomebageState extends State<Homebage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
          backgroundColor: darkcolor,
          title: const Text(
            'Travellers Exp',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.emoji_flags),
              color: scendrycolor,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Country();
                }));
              },
            ),
            // IconButton(
            //   icon: Icon(Icons.emoji_flags_outlined),
            //   color: scendrycolor,
            //   onPressed: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (_) {
            //       return Country();
            //     }));
            //   },
            // ),
            IconButton(
                icon: const Icon(Icons.notifications_active),
                color: scendrycolor,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) {
                      return const Favorite();
                    },
                  ));
                }),
            IconButton(
              icon: const Icon(Icons.dehaze),
              color: scendrycolor,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const MyDrawer();
                }));
              },
            ),
          ]),
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
                      child: const Text('add poste'),
                    )),
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
