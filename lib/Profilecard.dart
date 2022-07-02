// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



class Profilecard extends StatefulWidget {
  const Profilecard({ Key? key }) : super(key: key);

  @override
  _ProfilecardState createState() => _ProfilecardState();
}

class _ProfilecardState extends State<Profilecard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Card(
        elevation: 5,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: ListTile(
          leading: Icon(Icons.account_circle_rounded),
          title: Text('Abhiram K Pradeep',
              textScaleFactor: 1, style: TextStyle(color: Colors.black)),
          subtitle: Text('02', style: TextStyle(color: Colors.black)),
        ),
      )),
    );
  }
}