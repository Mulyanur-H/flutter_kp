import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_kp/widget/side_bar.dart';
import 'package:http/http.dart' as http;

class UserPage extends StatelessWidget {
  // const UserPage({
  //   required Key key,
  // }) : super(key: key);

  final String url = "http//api";

  Future getUser() async {
    var response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        endDrawer: SideBar(),
        appBar: AppBar(
          leading: BackButton(),
          title: Text('User Manajemen'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          elevation: 0.0,
        ),
        // body: FutureBuilder(
        //   future: getUser(),
        //   builder: (context,snapshot){
        //     if (snapshot.hasData){
        //       return ListView.builder(
        //         itemCount: snapshot.data['nama'].length,
        //         itemBuilder: (context, index){
        //           return Text(snapshot.data['nama'][index]['email']);
        //       });
                
              
        //     } else {
        //       return Text(' error');
        //     }
        //   },
        // ),
      );
}
