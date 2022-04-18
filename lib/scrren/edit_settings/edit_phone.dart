
import 'package:flutter/material.dart';

import 'edit_settings.dart';
class EditPhone extends StatelessWidget {
  const EditPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditSetting(onPress: () {  }, currentText: 'Your Current Phone Number :', newText: 'Change Phone Number :', hintText: '',),
    );
  }
}