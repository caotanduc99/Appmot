import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách cửa hàng bảo dưỡng xe máy'),
        backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: Colors.orange[100],
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Honda An Thành'),
            
            onTap: () {},
            
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Honda Trong Sáng'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Honda An Phát'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Yamaha Bình Dương'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('SUZUKI Bình Dương'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('SUZUKI Thuận An'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Yamaha Dĩ An'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Yamaha Gò Đậu'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Head Hiệp Thành'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}