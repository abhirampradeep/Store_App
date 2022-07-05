// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

// import 'dart:html';
// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilecard extends StatefulWidget {
  const Profilecard({Key? key}) : super(key: key);

  @override
  _ProfilecardState createState() => _ProfilecardState();
}

class _ProfilecardState extends State<Profilecard> {
  String money = '300';
  String name = 'Abhiram K ';
  String roll_no = '03';
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
          title: Text('$name',
              textScaleFactor: 1, style: TextStyle(color: Colors.black)),
          subtitle: Text('$roll_no', style: TextStyle(color: Colors.black)),
          trailing: Text(
            'rupees:$money',
            style:
                GoogleFonts.openSans(textStyle: TextStyle(color: Colors.green)),
          ),
        ),
      )),
    );
  }
}
