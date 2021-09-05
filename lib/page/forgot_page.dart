// import 'package:flutter/material.dart';
// import 'package:flutter_kp/widget/side_bar.dart';

// import '../home_page.dart';

// class ForgotPage extends StatelessWidget {
//   TextEditingController txtUsername = new TextEditingController();
//   TextEditingController txtPassword = new TextEditingController();
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         endDrawer: SideBar(),
//         appBar: AppBar(
//           leading: BackButton(),
//           title: Text('Permission Manajemen'),
//           centerTitle: true,
//           backgroundColor: Colors.transparent,
//           elevation: 0.0,
//         ),
//         body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Container(
//             // Text("test"),
//             margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
//             decoration: BoxDecoration(
//               // boxShadow: EdgeInsets.all(),
//               color: Colors.white,
//               borderRadius: BorderRadius.all(Radius.circular(30.0)),
//             ),

//             // color : Color(0xffF4F4F4),
//             padding: EdgeInsets.all(30),
//             // child: Card(
//             //   shape: StadiumBorder(),
//             //     // borderRadius: BorderRadius.circular(20),
//             //   child: Padding(
//             //   padding: EdgeInsets.all(30),
//             child: Column(
//               // textBaseline: TextBox(""),
//               children: <Widget>[
//                 Text(
//                   "Login",

//                   textAlign: TextAlign.justify,
//                   overflow: TextOverflow.ellipsis,
//                   // style: const TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 30),
//                 TextFormField(
//                   controller: txtUsername,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(25),
//                       borderSide:
//                           BorderSide(color: Color(0xff3399ff), width: 2),
//                     ),
//                     contentPadding:
//                         EdgeInsets.symmetric(vertical: 0, horizontal: 20),
//                     // focusColor: Color(),
//                     hintText: "Username",
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 TextFormField(
//                   controller: txtPassword,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(25),
//                         borderSide:
//                             BorderSide(color: Color(0xff3399ff), width: 2),
//                       ),
//                       contentPadding:
//                           EdgeInsets.symmetric(vertical: 0, horizontal: 20),
//                       hintText: "Password"),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 ButtonTheme(
//                     shape: StadiumBorder(),
//                     buttonColor: Color(0xff3399ff),
//                     padding: EdgeInsets.symmetric(vertical: 22, horizontal: 40),
//                     minWidth: double.infinity,
//                     child: RaisedButton(
//                       onPressed: () {
//                         // this.doLogin();
//                         String usernames = txtUsername.text;
//                         String passwords = txtPassword.text;
//                         if (usernames == "admin" && passwords == "admin") {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => PageHome(
//                                   // nama: usernames,
//                                   // String password : passwords,
//                                 )
//                               ));
//                           // Alert(
//                           //         context: context,
//                           //         title: "login berhasil",
//                           //         type: AlertType.success)
//                           //     .show();
//                         } else {
//                           // Alert(
//                           //         context: context,
//                           //         title: "login gagal",
//                           //         type: AlertType.error)
//                           //     .show();
//                         }
//                       },
//                       child:
//                       Text("Login", style: TextStyle(color: Colors.white)),
//                     ))
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
// }