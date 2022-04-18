
import 'package:flutter/material.dart';

class SingButton extends StatelessWidget {
  const SingButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed, this.textColor,
  }) : super(key: key);
  final String text;
  final Color color;
  final Function() onPressed;
  final Color? textColor;

  @override

  Widget build(BuildContext context) {
    return SizedBox(

      height: 50,
      width: 120,
      child: ElevatedButton(

        style: ButtonStyle(

          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
             backgroundColor: MaterialStateProperty.all( color),
           padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color:textColor),
        ),
      ),
    );
  }
}