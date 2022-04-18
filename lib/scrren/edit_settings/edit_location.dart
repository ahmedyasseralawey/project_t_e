
import 'package:flutter/material.dart';

import 'edit_settings.dart';

class EditLocation extends StatelessWidget {
  const EditLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: EditSetting(
        onPress: () {},
        currentText: 'Your Current Location :',
        newText: 'Change Location :',
        hintText: 'location',
      ),
    );
  }
}