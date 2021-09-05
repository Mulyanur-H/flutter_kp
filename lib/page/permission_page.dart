import 'package:flutter/material.dart';
import 'package:flutter_kp/widget/side_bar.dart';

class PermissionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        endDrawer: SideBar(),
        appBar: AppBar(
          leading: BackButton(),
          title: Text('Permission Manajemen'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
      );
}