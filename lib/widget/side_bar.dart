import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_kp/page/permission_page.dart';
import 'package:flutter_kp/page/profile_page.dart';
import 'package:flutter_kp/page/role_page.dart';
import 'package:flutter_kp/page/user_page.dart';
import 'package:flutter_kp/home_page.dart';

class SideBar extends StatelessWidget {
  final Padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'admin';
    final email = 'admin@gmail.com';
    final urlImage = '';

    // TODO: implement build
    return Drawer(
      //alt container
      child: Material(
        // decoration: ,
        color: Color(0xff3399ff),
        child: ListView(
          // padding: Padding,
          children: <Widget>[
            buildHeader(
              urlImage : urlImage,
              name : name,
              email : email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProfilePage(
                  // name: 'admin',
                  // urlImage: urlImage,

                ),
                
                )),
              
              
            ),
            Container(
              padding: Padding,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Profile',
                    // icon: Icons
                    onClicked: () => selectedItem(context, 0),
                  ),
                  buildMenuItem(
                    text: 'Home',
                    // icon: Icons
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'User',
                    // icon: Icons
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Role',
                    // icon: Icons
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Permision',
                    // icon: Icons
                    onClicked: () => selectedItem(context, 4),
                  ),
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }

  buildMenuItem({
    required String text,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      // leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProfilePage(),
        ));
        break;

      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PageHome(),
        ));
        break;

      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => UserPage(),
        ));
        break;

      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => RolePage(),
        ));
        break;

      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PermissionPage(),
        ));
        break;
    }
  }

  buildHeader({
    required String urlImage, 
    required String name, 
    required String email, 
    required VoidCallback onClicked,
    }) => InkWell(
      onTap: onClicked,
      child: Container(
        padding: Padding.add(EdgeInsets.symmetric(vertical: 40)),
        child: Row(
          children: [
            CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage),),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 20, color: Colors.white),

                ),
                const SizedBox(height: 4,),
                Text(
                  email,
                  style: TextStyle(fontSize: 14, color: Colors.white),

                ),
              ],
            ),
            Spacer(),
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.green[400],
              child: Icon(Icons.add_comment_outlined, color: Colors.white,),
            )
          ],
        ),
      )
    );
  // Widget buildHeader({
  //   required String urlImage
  //   })
}
