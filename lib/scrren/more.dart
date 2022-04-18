// import 'package:flutter/material.dart';
// import 'package:pte/comp/show.dart';
// import 'package:pte/scrren/profile.dart';
// import 'package:pte/scrren/seting.dart';
// import 'package:pte/theme/font.dart';
// import 'package:pte/theme/shedcolor.dart';
// // import 'package:app/components/show%20_alert_dialog.dart';
// // import 'package:app/screens/home_view.dart';
// // import 'package:app/screens/settings/settings_page.dart';

// // import '../constants.dart';
// class MyDrawer extends StatelessWidget {
//   const MyDrawer({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(

//       elevation: 40,
//       backgroundColor:darkcolor ,
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[

//           SizedBox(height: 100,),
//           CircleAvatar(
//             radius: 85,
//             backgroundImage: AssetImage('assets/images/travel.jpeg'),
//           ),

//           Padding(
//             padding: const EdgeInsets.only(left: 50,bottom: 30,top: 40),
//             child: Text('user name', style: TextStyle(fontSize:21 ),),
//           ),
//           ListTile(
//             title: Text('your profile',style: TextStyle(fontSize: 25),),
//             onTap: () {
           
//             },
//           ),
//           ListTile(
//             title: Text('logout',style: TextStyle(fontSize: 25),),
//             onTap: () {
//                showAlertDialog(context);
//             },
//           ),
//           ListTile(
//             title: Text('favourites',style: TextStyle(fontSize: 25),),
//             onTap: () {},
//           ),
//           ListTile(

//             title: Text('Settings',style: TextStyle(fontSize: 25),),
//             onTap: () {
//               Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SettingsPage()));
//             },
//           ),
//         ],
//       ),
//     );
//   }

// }
