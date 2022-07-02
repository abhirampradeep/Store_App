// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



class Alertdialogueform extends StatefulWidget {
  const Alertdialogueform({ Key? key }) : super(key: key);

  @override
  _AlertdialogueformState createState() => _AlertdialogueformState();
}

class _AlertdialogueformState extends State<Alertdialogueform> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: AlertDialog(
        title: Text('Fill the form'),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  // isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                  labelText: 'Student Name',
                  hintText: 'Enter the Name'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  // isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                  labelText: 'Roll No',
                  hintText: 'Enter the Roll No'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  // isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                  labelText: 'Department',
                  hintText: 'Enter the Semester and department '),
            ),
          ),
             Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  // isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                  labelText: 'Amount',
                  hintText: 'Enter the Amount'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            // margin: const EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              child: Text(
                'Save',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                //Navigator.pop(context);
                // alert();
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Are you Sure?"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                // Navigator.popUntil(context, (route) {
                                  
                                // });
                              },
                              child: Text("confirm")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("cancel"))
                        ],
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}