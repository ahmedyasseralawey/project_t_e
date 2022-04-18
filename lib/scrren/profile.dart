import 'package:flutter/material.dart';
import 'package:progect_t_e/scrren/s.dart';
import 'package:progect_t_e/theme/font.dart';
import 'package:progect_t_e/theme/shedcolor.dart';
import 'package:progect_t_e/widge/backButon.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // File? pickedImage

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        leading: CuostomBackButton(),
        iconTheme: IconThemeData(color: blackColor, size: 25.0),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Form(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.height / 2.5,
                margin: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image:
                      //pickedImage == null ?
                      DecorationImage(
                    image: AssetImage('girl.jpeg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.add_a_photo,
                  size: 30,
                  // onPressed: () async {
                  //       XFile? img = await ImagePicker().pickImage(source: ImageSource.camera);
                  //       setState(() {
                  //         pickedImage = File(img!.path);
                  //       });
                  //     },
                ),
              ),

              // Column(
              //    children:[ Row(
              //      children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  ' Ur Name',
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //    ],
              //  ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: scendrycolor,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 15.00,
              ),
              const Divider(thickness: 1, color: Colors.grey),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.home),
                      Text(
                        ' Lives in Cairo , Egypt',
                        style: primaryTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on_rounded,
                      ),
                      Text(
                        ' EL Shoruok City',
                        style: primaryTextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.white10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '100',
                        style: primaryTextStyle,
                      ),
                      Text(
                        ' Followers',
                        style: primaryTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '100',
                        style: primaryTextStyle,
                      ),
                      Text(
                        ' Following',
                        style: primaryTextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 7),

                    width: MediaQuery.of(context).size.width * 80,
                    height: MediaQuery.of(context).size.height * 6,
                    // width: MediaQuery.of(context).size.width*4.5,
                    color: Colors.grey,
                    child: const profilehome(),

                    // Postes(),
                  )
                ],
              )
              // ]

              // )
            ],
          ),
        ),
      ),
    );
  }
}
