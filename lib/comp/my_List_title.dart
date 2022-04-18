import 'package:flutter/material.dart';
import 'package:progect_t_e/theme/g.dart';



class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key, required this.text, required this.ontap,
  }) : super(key: key);
final String text;
final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      title: Text(
       text,
        style: const TextStyle(
          fontSize: 28,
          color: kTextFormField,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: kGold,
      ),
    );
  }
}