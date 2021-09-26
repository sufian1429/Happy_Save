import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:happysave/views/Home1.dart';
import 'package:happysave/views/Home.dart';

import 'Login.dart';

class Home extends StatefulWidget {
  static String routeName = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String fname, lname, state;
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
      drawer: showDrawer(
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.network(
                  'https://cdn0.iconfinder.com/data/icons/business-finance-vol-2-56/512/z1-time_efficient_money_hourglass-128.png',
                  height: 144,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Income-Expenses_Today',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ขายบ้าน +10,000,000 บาท',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ขายรถ +1,800,000 บาท',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ขายที่ดิน +188,200,049 บาท',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ค่ากินข้าว -50 บาท',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ยอดคงเหลือในบัญชี = 199,999,999 บาท',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Income-Expenses_Yesterday',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ค่ากินข้าว -50 บาท',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ค่ากินข้าว -50 บาท',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ยอดคงเหลือในบัญชี = 0 บาท',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      color: Colors.green,
                      child: Text('Income',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home1(),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.blue,
                      child: Text('Expenses',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home1(),
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

Drawer showDrawer({MaterialColor color, MaterialColor backgroundColor}) =>
    Drawer(
      child: ListView(
        children: <Widget>[showHeadDrawer(), signInMenu()],
      ),
    );

ListTile signInMenu() {
  return ListTile(
    leading: Icon(person),
    title: Text('Log Out'),
    onTap: () {
      Nevigator.pop();
      MaterialPageRoute route = MaterialPageRoute(builder: (value) => Login());
      var context;
      Nevigator.push(context, route);
    },
  );
}

class Nevigator {
  static void push(context, MaterialPageRoute route) {}

  static void pop() {}
}

get person {
  var person;
  return person;
}

UserAccountsDrawerHeader showHeadDrawer() {
  return UserAccountsDrawerHeader(
      decoration: BoxDecoration(color: Colors.green[900]),
      accountName: Text('Sufian'),
      accountEmail: Text('Wellcome To HappySave'));
}
