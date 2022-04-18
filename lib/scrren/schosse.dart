import 'package:flutter/material.dart';
import 'package:progect_t_e/theme/shedcolor.dart';

import 'home.dart';

class schooes extends StatefulWidget {
  @override
  _schooesState createState() => _schooesState();
}

class _schooesState extends State<schooes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: darkcolor,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width / 1.2,
                margin: const EdgeInsets.only(top: 20, bottom: 10, left: 30),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('image/oo.jpeg'),
                      fit: BoxFit.fill,
                      alignment: Alignment.center),
                ),
              ),
            ],
          ),
          Row(children: [
            const Padding(padding: EdgeInsets.all(10)),
            Text(
              'what information do you want to know about the country?',
              style: TextStyle(
                  color: perymarycolor,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          ListTile(
              tileColor: perymarycolor,
              title: const Text(
                'Travel procedures',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Homebage();
                }));
              }),
          ListTile(
              tileColor: darkcolor,
              title: const Text(
                'Transportation',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Homebage();
                }));
              }),
          ListTile(
              tileColor: background,
              title: const Text(
                'Universities',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Homebage();
                }));
              }),
          ListTile(
              tileColor: perymarycolor,
              title: const Text(
                'Touristic places',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Homebage();
                }));
              }),
          ListTile(
            tileColor: darkcolor,
            title: const Text(
              'Hospitals',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
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
        ],
      ),
    );
  }
}
