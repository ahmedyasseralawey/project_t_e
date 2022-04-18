import 'package:flutter/material.dart';
import 'package:progect_t_e/theme/g.dart';


class EditSetting extends StatelessWidget {
  const EditSetting({
    Key? key,
    required this.currentText,
    required this.onPress,
    required this.newText,
    required this.hintText,
  }) : super(key: key);
  final String currentText;
  final String newText;
  final String hintText;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: kBackground),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 400),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: kTextFormField,
                    ),
                  ),
                ),
              ),
              Container(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.only(right: 150.0, top: 50),
                  child: Text(
                    currentText,
                    style: TextStyle(color: kBlack, fontSize: 28),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 400,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 32.0),
                          borderRadius: BorderRadius.circular(5.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(5.0))),
                  onChanged: (value) {
                    //Do something with this value
                  },
                ),
              ),
              Container(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.only(right: 205.0, top: 50),
                  child: Text(
                    newText,
                    style: TextStyle(color: kBlack, fontSize: 28),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 400,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Enter your new $hintText',
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 32.0),
                          borderRadius: BorderRadius.circular(5.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(5.0))),
                  onChanged: (value) {
                    //Do something with this value
                  },
                ),
              ),
              SizedBox(
                height: 180,
              ),
              Container(
                width: 150,
                height: 50,
                child: FlatButton(
                  color: kTextFormField,
                  onPressed: onPress,
                  child: Text(
                    'Save',
                    style: TextStyle(fontSize: 28, color: kBlack),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}