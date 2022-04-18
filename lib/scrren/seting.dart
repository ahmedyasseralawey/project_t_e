import 'package:flutter/material.dart';
import 'package:progect_t_e/scrren/my_listView.dart';
import 'package:progect_t_e/theme/shedcolor.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

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
        iconTheme: IconThemeData(
          color: blackColor,
        ),
        backgroundColor: blackColor,
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 30, color: blackColor),
        ),
      ),
      body: const MyListView(),
    );
  }
}
