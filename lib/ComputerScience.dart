// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app_waya/Alertdialogueform.dart';
import 'package:store_app_waya/Profile.dart';
import 'package:store_app_waya/Profilecard.dart';




class ComputerScience extends StatefulWidget {
  const ComputerScience({ Key? key }) : super(key: key);

  @override
  _ComputerScienceState createState() => _ComputerScienceState();
}

class _ComputerScienceState extends State<ComputerScience> {
  final List profilelist = [
    'profile1',
    'profile2',
    'profile3',
    'profile4',
    'profile5',
    'profile6',
    'profile6',
    'profile6',
    'profile6',
    'profile6',
    'profile6',
    'profile6',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text('My App'),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Profile()));
            },
          )),

      //Listview builder

      body: ListView.builder(
        itemCount: profilelist.length,
        itemBuilder: (context, index) {
          return Profilecard();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          showDialog(context: context, builder: (context){
            return Alertdialogueform();
          });
        },
        backgroundColor: Colors.pink[300],
        child: const Icon(Icons.add),
      ),
    );
  }
}