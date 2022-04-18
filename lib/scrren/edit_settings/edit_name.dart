
import 'package:flutter/material.dart';

import 'edit_settings.dart';

class EditName extends StatelessWidget {
  const EditName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditSetting(
        onPress: () {},
        currentText: 'Your Current Name :',
        newText: 'Change Name :',
        hintText: 'name',
      ),
    );
  }
}