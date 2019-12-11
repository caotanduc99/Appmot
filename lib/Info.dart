import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin xe của bạn'),
        backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: Colors.orange[100],
      body: ListView(
        children: <Widget>[
          ListTile(
           leading: Icon(Icons.account_circle),
            title: Text('Tài khoản: '),
            
            onTap: () {},
            
          ),
          ListTile(
            leading: Icon(Icons.traffic),
            title: Text('Phương tiện: '),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.branding_watermark),
            title: Text('Hãng: '),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.shutter_speed),
            title: Text('Phân khối: '),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.linear_scale),
            title: Text('Odo: '),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.local_gas_station),
            title: Text('Tiêu hoa nhiên liệu: '),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.error_outline),
            title: Text('Dung tích nhớt: '),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.room_service),
            title: Text('Bão dưỡng tiếp theo: '),
            onTap: () {},
          ),
          
          
        ],
      ),
    );
  }
}