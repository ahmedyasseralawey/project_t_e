import 'package:flutter/material.dart';

class CuostomBackButton extends StatefulWidget {
  @override
  _CuostomBackButtonState createState() => _CuostomBackButtonState();
}

class _CuostomBackButtonState extends State<CuostomBackButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
