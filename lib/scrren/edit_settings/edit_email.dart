
import 'package:flutter/material.dart';

import 'edit_settings.dart';
class EditEmail extends StatelessWidget {
  const EditEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditSetting(
        onPress: () {},
        currentText: 'Your Current Email :',
        newText: 'Change Email :',
        hintText: 'Email',
      ),
    );
  }
}