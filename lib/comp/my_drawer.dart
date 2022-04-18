
import 'package:flutter/material.dart';
import 'package:progect_t_e/comp/show.dart';
import 'package:progect_t_e/scrren/profile.dart';
import 'package:progect_t_e/scrren/seting.dart';
import 'package:progect_t_e/theme/g.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      elevation: 40,
      backgroundColor: kTextFormField,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[

          const SizedBox(height: 100,),
           
          const CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage('travel.jpeg'),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 50,bottom: 30,top: 40),
            child: Text('user name', style: TextStyle(fontSize:21 ),),
          ),
          ListTile(
            title: const Text('your profile',style: TextStyle(fontSize: 25),),
            onTap: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Profile()));

            },
          ),
          ListTile(
            title: const Text('logout',style: TextStyle(fontSize: 25),),
            onTap: () {
               showAlertDialog(context);
            },
          ),
          ListTile(
            title: const Text('favourites',style: TextStyle(fontSize: 25),),
            onTap: () {},
          ),
          ListTile(

            title: const Text('Settings',style: TextStyle(fontSize: 25),),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const SettingsPage()));
            },
          ),
        ],
      ),
    );
  }

}