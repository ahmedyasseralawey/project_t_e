import 'package:flutter/material.dart';
import 'package:progect_t_e/data/data.dart';
import 'package:progect_t_e/theme/shedcolor.dart';

class addpost extends StatefulWidget {
  const addpost({Key? key}) : super(key: key);

  @override
  _addpostState createState() => _addpostState();
}

class _addpostState extends State<addpost> {
  final db = posts;
  late String addpost;

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkcolor,
        actions: [
          IconButton(
            icon: const Icon(Icons.local_see_outlined),
            color: scendrycolor,
            onPressed: () {},
          ),
          const SizedBox(),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Post'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: TextFormField(
                validator: (_val) {
                  if (_val!.isEmpty) {
                    return 'Please enter something';
                  }
                  return null;
                },

                // onChanged: (String post) {
                //   getNewPost(post);
                onChanged: (_val) {
                  addpost = _val;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
