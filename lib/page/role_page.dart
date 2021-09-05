import 'package:flutter/material.dart';
import 'package:flutter_kp/widget/side_bar.dart';

class RolePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        endDrawer: SideBar(),
        appBar: AppBar(
          leading: BackButton(),
          title: Text('Role Manajemen'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          elevation: 0.0,
        ),
      );
}