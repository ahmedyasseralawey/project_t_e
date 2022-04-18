import 'package:flutter/material.dart';
import 'package:progect_t_e/scrren/schosse.dart';
import 'package:progect_t_e/theme/font.dart';
import 'package:progect_t_e/theme/shedcolor.dart';

class Country extends StatefulWidget {
  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: darkcolor,
        title: Text(
          'Choose the country you want to go to ',
          style: thrdsryTextstyle,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Form(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.height / 1,
                margin: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/gaver.jpeg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
              ),
              Container(
                color: darkcolor,
                width: 400,
                height: 300,
                child: ListView(
                  children: [
                    ListTile(
                        tileColor: darkcolor,
                        trailing: Image.asset('assets/egypt.png', height: 65),
                        title: const Text(
                          'Egypt',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return schooes();
                          }));
                        }),
                    ListTile(
                        tileColor: perymarycolor,
                        trailing: Image.asset('assets/fran.png', height: 65),
                        title: const Text(
                          'Franc',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return schooes();
                          }));
                        }),
                    ListTile(
                      tileColor: darkcolor,
                      trailing: Image.asset('assets/turkey.png', height: 65),
                      title: const Text(
                        'Turkey',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return schooes();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
