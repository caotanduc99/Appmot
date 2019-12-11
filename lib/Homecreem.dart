import 'package:cloud_firestore/cloud_firestore.dart';

import './Port/Login.dart';
//import 'package:appmot/UI%20Profile/Constant.dart';
import 'package:flutter/material.dart';
import 'package:appmot/Map.dart';
import 'package:appmot/Store.dart';
import 'package:appmot/Menu.dart';
import 'package:appmot/CustomList.dart';
import 'package:appmot/Info.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'main.dart';
//import './UI Profile/Profi.dart';
import './UI Profile/ProfilePage.dart';
import './Noti/Notification.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key, this.user}) : super(key: key);
  final FirebaseUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin xe máy'),
        backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: Colors.orange[100],
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Mymenu(Icons.gps_fixed, 'Định vị xe', () => {}, Colors.orange[100]),
            Mymenu(
                Icons.map,
                'Bản đồ',
                () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MapsDe()))
                    },
                Colors.orange[100]),
            Mymenu(
                Icons.notifications_active,
                'Nhắc nhở bảo dưỡng',
                () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Notifi()))
                    },
                Colors.orange[100]),
            Mymenu(
                Icons.motorcycle,
                'Xe của bạn',
                () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Info()))
                    },
                Colors.orange[100]),
            Mymenu(
                Icons.store,
                'Cửa hàng',
                () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Store()))
                    },
                Colors.orange[100]),
            Mymenu(Icons.history, 'Lịch sử bảo dưỡng', () => {},
                Colors.orange[100]),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                Colors.deepOrange,
                Colors.orangeAccent,
              ])),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      elevation: 20,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset(
                          'images/logo.png',
                          width: 85,
                          height: 85,
                        ),
                      ),
                    ),
                    Text(
                      'Drive hearth',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomListTile(
                Icons.person,
                'Hồ sơ',
                () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()))
                    }),
            //CustomListTile(Icons.notifications, 'Thông báo', () => {}),
            CustomListTile(Icons.settings, 'Cài đặt', () => {}),
            CustomListTile(
                Icons.lock,
                'Thoát',
                () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()))
                    }),
          ],
        ),
      ),
    );
  }

  //  @override
  //   Widget build(BuildContext context) {
  //     return Scaffold(

  //     );
  //   }

  // Center checkRole(DocumentSnapshot snapshot) {
  //   if (snapshot.data == null) {
  //     return Center(
  //       child: Text('no data set in the userId document in firestore'),
  //     );
  //   }
  //   if (snapshot.data['role'] == 'admin') {
  //     return adminPage(snapshot);
  //   } else {
  //     return userPage(snapshot);
  //   }
  // }

  // Center adminPage(DocumentSnapshot snapshot) {
  //   return Center(
  //       child: Text('${snapshot.data['role']} ${snapshot.data['name']}'));
  // }

  // Center userPage(DocumentSnapshot snapshot) {
  //   return Center(child: Text(snapshot.data['name']));
  // }
}

// widget({StreamBuilder<DocumentSnapshot> child}) {}
