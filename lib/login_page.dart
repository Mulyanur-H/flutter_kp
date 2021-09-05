import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:http/http.dart' as http;
import 'home_page.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();
  @override
  // BoxDecoration myBoxDecoration() {
  //   return BoxDecoration(
  //       border: Border.all(
  //         width: 1,
  //       ),
  //       borderRadius: BorderRadius.all(
  //         Radius.circular(10.0)
  //       ),
  //       color: Color(0xffffff)
  //       );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Colors.black12,
      // backgroundColor: Color(0xff3399ff),
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.black45),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Login",

          // textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            // Text("test"),
            margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
            decoration: BoxDecoration(
              // boxShadow: EdgeInsets.all(),
              color: Colors.white,
              // image: DecorationImage(image: AssetImage('assets/img/background.png')
              // ),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),

            // color : Color(0xffF4F4F4),
            padding: EdgeInsets.all(30),
            // child: Card(
            //   shape: StadiumBorder(),
            //     // borderRadius: BorderRadius.circular(20),
            //   child: Padding(
            //   padding: EdgeInsets.all(30),
            child: Column(
              // textBaseline: TextBox(""),
              children: <Widget>[
                Text(
                  "Login",

                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  // style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: txtUsername,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Color(0xff3399ff), width: 2),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    // focusColor: Color(),
                    hintText: "Username",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: txtPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide:
                            BorderSide(color: Color(0xff3399ff), width: 2),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                      hintText: "Password"),
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonTheme(
                    shape: StadiumBorder(),
                    buttonColor: Color(0xff3399ff),
                    padding: EdgeInsets.symmetric(vertical: 22, horizontal: 40),
                    minWidth: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        // this.doLogin();
                        String usernames = txtUsername.text;
                        String passwords = txtPassword.text;
                        if (usernames == "admin" && passwords == "admin") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageHome(
                                  // nama: usernames,
                                  // String password : passwords,
                                )
                              ));
                          // Alert(
                          //         context: context,
                          //         title: "login berhasil",
                          //         type: AlertType.success)
                          //     .show();
                        } else {
                          // Alert(
                          //         context: context,
                          //         title: "login gagal",
                          //         type: AlertType.error)
                          //     .show();
                        }
                      },
                      child:
                      Text("Login", style: TextStyle(color: Colors.white)),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// Future doLogin() async {
//   if (txtUsername.text.isEmpty || txtPassword.text.isEmpty) {
//     Alert(context: context, title: "data tidak benar", type: AlertType.error)
//         .show();
//     return;
//   }
//   var url = Uri.parse('http://demosanctum.test/api/login');
//   final response = await http.post(url, body: {
//     'email': txtUsername.text,
//     'password': txtPassword.text,
//   }, headers: {
//     'Accept': 'application/json'
//   });
//   if ('email' == txtUsername) {
//     Alert(context: context, title: "login berhasil", type: AlertType.success)
//         .show();
//   } else {
//     Alert(context: context, title: "login gagal", type: AlertType.error)
//         .show();
//   }
// }

// RaisedButton(
//   shape: StadiumBorder(),
//   color: Colors.blue,
//   onPressed: (){},
// ),
// Container(
//   decoration: BoxDecoration(

//   ),

// ),

// Container(
//   // decoration: InputDecoration(
//   //   border: OutlinedBorder(
//   //     borderRadius: BorderRadius.circular(25),
//   //   ),
//   // ),
//   color: Color(0xff3399ff),
//   child: Container(
//     height: 50,
//     child: InkWell(
//       splashColor: Colors.white,
//       onTap: (){
//         String username = txtUsername.text;
//         String password = txtPassword.text;
//         if (username == "admin" && password == "admin") {
//           Alert(
//                   context: context,
//                   title: "login berhasil",
//                   type: AlertType.success)
//               .show();
//         } else {
//           Alert(
//                   context: context,
//                   title: "login gagal",
//                   type: AlertType.error)
//               .show();
//         }
//       },
//       child: Center(child: Text("login", style: TextStyle(fontSize: 20, color: Color(0xffF4F4F4)),),),
//     ),
//   ),
// ),
