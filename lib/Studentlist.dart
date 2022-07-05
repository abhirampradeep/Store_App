// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app_waya/Alertdialogueform.dart';
import 'package:store_app_waya/Profile.dart';
import 'package:store_app_waya/Profilecard.dart';
import 'package:store_app_waya/Yearwise.dart';

class Department extends StatefulWidget {
  const Department({Key? key}) : super(key: key);

  @override
  _DepartmentState createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
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

  final controller = TextEditingController();
  @override
  final styleActive = TextStyle(color: Colors.black);
  final styleHint = TextStyle(color: Colors.black54);
  // final style = widget.text.isEmpty ? styleHint : styleActive;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF478DE0),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Yearwise()));
          },
        ),
      ),

      //Listview builder
      body: Column(
        children: [
          Container(
            height: 42,
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              border: Border.all(color: Colors.black26),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color:Colors.grey,
                ),
                suffixIcon: GestureDetector(
                  child: Icon(Icons.close,
                  color: Colors.grey,
                  ),
                  onTap: (){
                    controller.clear();
                    // widget.onChanged('');
                    // FocusScope.of(context).requestFocus()
                  },
                ),
                hintText:'Enter Roll No or Name' ,
                border: InputBorder.none,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: profilelist.length,
              itemBuilder: (context, index) {
                return Profilecard();
              },
            ),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Alertdialogueform();
              });
        },
        backgroundColor: Colors.pink[300],
        child: const Icon(Icons.add),
      ),
    );
  }
}
