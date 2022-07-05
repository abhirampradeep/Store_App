// ignore_for_file: prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:store_app_waya/Profile.dart';
import 'package:store_app_waya/Studentlist.dart';




class Yearwise extends StatefulWidget {
  const Yearwise({ Key? key }) : super(key: key);

  @override
  _YearwiseState createState() => _YearwiseState();
}

class _YearwiseState extends State<Yearwise> {
  @override
  Widget build(BuildContext context)  {
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
                MaterialPageRoute(builder: (context) => Profile()));
          },
        ),
        ),
        body: GridView.count(
          
          primary: false,
          padding:
              const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 10),
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          children: [
            InkWell(
              child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Expanded(
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Department()));
                            },
                            icon: const Icon(
                              Icons.computer_rounded,
                              size: 50,
                            ),
                            color: Colors.black,
                            iconSize: 50.0,
                            splashColor: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "1st Year ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Department()));
              },
            ),
            InkWell(
              child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Expanded(
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Department()));
                            },
                            icon: const Icon(
                              Icons.add_rounded,
                              size: 50,
                            ),
                            color: Colors.black,
                            iconSize: 50.0,
                            splashColor: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: const Align(
                          alignment: Alignment.center,
                          child: const Text(
                            "2nd Year ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Department()));
              },
            ),
            InkWell(
              child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Expanded(
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Department()));
                            },
                            icon: const Icon(
                              Icons.build_rounded,
                              size: 50,
                            ),
                            color: Colors.black,
                            iconSize: 50.0,
                            splashColor: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "3rd Year ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Department()));
              },
            ),
            InkWell(
              child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Expanded(
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Department()));
                            },
                            icon: const Icon(
                              Icons.settings,
                              size: 50,
                            ),
                            color: Colors.black,
                            iconSize: 50.0,
                            splashColor: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "4th Year ",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                  ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Department()));
              },
            ),
          ],
        ),
        
            );
  }
}