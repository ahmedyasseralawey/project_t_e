import 'package:flutter/material.dart';
import 'package:progect_t_e/comp/my_List_title.dart';
import 'package:progect_t_e/scrren/edit_settings/edit_email.dart';
import 'package:progect_t_e/scrren/edit_settings/edit_location.dart';
import 'package:progect_t_e/scrren/edit_settings/edit_name.dart';
import 'package:progect_t_e/scrren/edit_settings/edit_phone.dart';
import 'package:progect_t_e/theme/g.dart';


class MyListView extends StatelessWidget {
  const MyListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 1,
          decoration: const BoxDecoration(color: kBlack),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyListTile(
            text: 'Name',
            ontap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const EditName()));
            },
          ),
        ),
        Container(
          height: 1,
          decoration: const BoxDecoration(color: kBlack),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyListTile(
            text: 'Phone',
            ontap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const EditPhone()));
            },
          ),
        ),
        Container(
          height: 1,
          decoration: const BoxDecoration(color: kBlack),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyListTile(
            text: 'Location',
            ontap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const EditLocation()));
            },
          ),
        ),
        Container(
          height: 1,
          decoration: const BoxDecoration(color: kBlack),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyListTile(
            text: 'Email',
            ontap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const EditEmail()));
            },
          ),
        ),
        Container(
          height: 1,
          decoration: const BoxDecoration(color: kBlack),
        ),
      ],
    );
  }
}