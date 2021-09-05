import 'package:flutter/material.dart';
import 'package:flutter_kp/widget/side_bar.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        endDrawer: SideBar(),
        appBar: AppBar(
          leading: BackButton(),
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
          decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill
                  ),
                ),
          child: Column(
            children: [
              Container(
                height: 400,
                
              )
            ],
          ),
        ),
      );
}