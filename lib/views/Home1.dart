import 'package:flutter/material.dart';
import 'package:happysave/main.dart';
import 'package:happysave/views/Upload%20Image.dart';
import 'package:happysave/views/Home1.dart';
import 'package:http/http.dart' as http;

import 'Home.dart';

class Home1 extends StatefulWidget {
  static String routeName = '/home1';

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Happy Save ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: showDrawer(),
      body: Container(
        child: Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.network(
                  'https://cdn3.iconfinder.com/data/icons/scenarium-vol-10/128/030-256.png',
                  height: 144,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      color: Colors.green,
                      child: Text('Upload Image',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UploadImage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.blue,
                      child: Text('Scan Image',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UploadImage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.white,
                      child: Text('Fill it Youself',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UploadImage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
