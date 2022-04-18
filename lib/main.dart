import 'package:flutter/material.dart';
import 'package:progect_t_e/scrren/welcom.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     home: Welcombage(),
  
      debugShowCheckedModeBanner: false,
    );
  }
}
