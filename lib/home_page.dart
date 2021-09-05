import 'package:flutter/material.dart';
import 'package:flutter_kp/main.dart';
import 'package:flutter_kp/widget/side_bar.dart';

class PageHome extends StatefulWidget {
  // static String title;

  // final String nama;
  // final String password;

  //constructor

  // PageHome({Key key, @required this.nama @required this.password}) : super(key:  key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) => Scaffold (
    backgroundColor: Colors.white,
    extendBodyBehindAppBar: true,
    endDrawer: SideBar(),
    appBar: AppBar(
      leading: BackButton(),
      centerTitle: true,
      title: Text("Home"),
      backgroundColor: Colors.transparent,
      // backgroundColor: Colors.red,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
      ),
    ),
    body: ListView(
      
      scrollDirection: Axis.vertical,
      children: <Widget>[
        
        Padding(
          
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/background.png'),
                fit: BoxFit.fill
              ),
            ),
            child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              child: Column(
                children: <Widget>[
                  Text("test"),
                  Container(
                    width: 20,
                    height: 40,
                    child: Container(),
                  ),
                  Container(
                    
                    child: Column(),
                    width: 250,
                    height: 200,
                    color: Colors.white70,
                    
                  )
                ],
              ),
            ),
          ),
        )
      ],
    )    
  );   
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Page Home'),
    //     backgroundColor: Colors.red,
    //   ),
}