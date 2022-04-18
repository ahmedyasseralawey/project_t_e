import 'package:flutter/material.dart';
import 'package:progect_t_e/theme/g.dart';



class MyTextField extends StatelessWidget {
    const MyTextField({
    Key? key,
    required this.text,
     this.textEditingController,  this.formFieldValidator,
  }) : super(key: key);
  final String text;

  final TextEditingController? textEditingController;
final FormFieldValidator<String>? formFieldValidator;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 40, right: 40),
      child: TextFormField(

        controller: textEditingController,
        textAlign: TextAlign.center,
        validator: formFieldValidator,
        decoration: InputDecoration(
          fillColor: kBackground,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: text,
          hintStyle: const TextStyle(color: kBlack),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: kTextFormField),
            gapPadding: 10,
          ),
        ),
      ),
    );
  }
}