import 'package:flutter/material.dart';

class Mymenu extends StatelessWidget {
  IconData icon;
  String text;
  MaterialColor colo;
  Function onTap;

  Mymenu(this.icon, this.text, this.onTap, colo);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.deepOrange,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: colo,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 17.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}