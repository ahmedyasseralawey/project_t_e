import 'package:flutter/material.dart';
import 'package:progect_t_e/scrren/comment.dart';
import 'package:progect_t_e/theme/shedcolor.dart';

class Postes extends StatelessWidget {
  List<Map<String, dynamic>> icons = [
    {'icon': Icons.thumb_up, 'text': 'like'},
    {'icon': Icons.comment, 'text': 'comment'},
    {'icon': Icons.share, 'text': 'share'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    child: const CircleAvatar(),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      'Adam mohamed',
                      style: TextStyle(
                          color: perymarycolor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 150,
              minWidth: 150,
              maxHeight: 350.0,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset('assets/viwe.jpeg'),
            ),
          ),
          Row(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    children: [
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0XFFFFFFFF),
                              onPrimary: const Color(0XFF000000)),
                          onPressed: () {},
                          icon: const Icon(Icons.thumb_up),
                          label: const Text('like    ')),
                    ],
                  )),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    children: [
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0XFFFFFFFF),
                              onPrimary: const Color(0XFF000000)),
                          onPressed: () {
                            Navigator.pop(context,
                                MaterialPageRoute(builder: (_) {
                              return const CommeentBadg();
                            }));
                          },
                          icon: const Icon(Icons.chat_bubble_outline_outlined),
                          label: const Text('comment')),
                    ],
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 3,
                child: Row(
                  children: [
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0XFFFFFFFF),
                            onPrimary: const Color(0XFF000000)),
                        onPressed: () {},
                        icon: const Icon(Icons.reply_outlined),
                        label: const Text('share')),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
