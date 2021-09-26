import 'package:flutter/material.dart';
import 'package:happysave/views/Home1.dart';
import 'package:happysave/views/Home2.dart';
import 'package:happysave/views/Upload%20Image.dart';
import 'package:happysave/views/ScanImage.dart';
import 'package:happysave/views/FillitYouself.dart';
import 'package:happysave/views/Login.dart';
import 'package:happysave/views/Home.dart';
import 'package:happysave/views/Register.dart';

main() => runApp(HappySave());

class HappySave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/HappySave',
      routes: {
        Home.routeName: (context) => Home(),
        Login.routeName: (context) => Login(),
        Register.routeName: (context) => Register(),
        Home1.routeName: (context) => Home1(),
        //Home2.routeName: (context) => Home2(),
        UploadImage.routeName: (context) => UploadImage(),
        //ScanImage.routeName: (context) => ScanImage(),
        //FillitYouself.routeName: (context) => FillitYouself(),
      },
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
