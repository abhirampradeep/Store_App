// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, curly_braces_in_flow_control_structures

import 'dart:async';
// import 'dart:html';

import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app_waya/Profile.dart';
import 'package:store_app_waya/Studentdetails.dart';
import 'package:store_app_waya/main.dart';
import 'package:store_app_waya/services/auth.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    getIt<Auth>().user != null ? Profile() : login())));
  }

  final style =
      TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF73AEF5),
              Color(0xFF61A4F1),
              Color(0xFF478DE0),
              Color(0xFF398AE5),
            ],
            stops: [0.1, 0.4, 0.7, 0.9],
          )),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: Colors.pinkAccent, width: 8, style: BorderStyle.solid),
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    'assets/image/store.jpg',
                  ))),
        ),
      ]),
    );
  }
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final _formkey = GlobalKey<FormState>();

  final style =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);

  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  Future signIn() async {
    // progress bar
    showDialog(
        context: context,
        builder: (context) {
          return Center(child: CircularProgressIndicator());
        });

    return getIt<Auth>().signIn(
      email: _emailcontroller.text.trim(),
      password: _passwordcontroller.text.trim(),
    );

    //progress bar pop
  }

  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  bool _isObscure = true;

  String _errorMessage = '';

  bool Loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formkey,
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  )),
                ),
                Container(
                  height: double.infinity,
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 50.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 120,
                          padding: const EdgeInsets.all(40),
                          margin: const EdgeInsets.all(40),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.pinkAccent,
                                  width: 4,
                                  style: BorderStyle.solid),
                              image: DecorationImage(
                                  image: AssetImage(
                                'assets/image/store.jpg',
                              ))),
                        ),
                        Text("LogIn",
                            style: GoogleFonts.openSans(
                              textStyle: style,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(color: Colors.white)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "enter email address";
                                  } else
                                    return null;
                                },
                                controller: _emailcontroller,
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    helperText: '',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusColor: Colors.white,
                                    isDense: true,
                                    contentPadding: EdgeInsets.only(top: 15),
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.white,
                                    ),
                                    hintText: 'Enter your email',
                                    hintStyle: TextStyle(color: Colors.white)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Password",
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(color: Colors.white)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: TextFormField(
                                controller: _passwordcontroller,
                                validator: (value) {
                                  if (value != null && value.length < 5) {
                                    return 'Enter min 5 characters';
                                  } else {
                                    return null;
                                  }
                                },
                                obscureText: _isObscure,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    helperText: '',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.only(top: 5),
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Colors.white,
                                    ),
                                    suffixIcon: IconButton(
                                      color: Colors.white,
                                      icon: Icon(_isObscure
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          _isObscure = !_isObscure;
                                        });
                                      },
                                    ),
                                    hintText: 'Enter your Password',
                                    hintStyle: TextStyle(color: Colors.white)),
                              ),
                            ),
                            Container(
                                height: 110,
                                padding: EdgeInsets.symmetric(vertical: 35),
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    final isValidForm =
                                        _formkey.currentState!.validate();
                                    if (_emailcontroller.text == '' ||
                                        _passwordcontroller.text == '') {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              content: Text(
                                                  "Enter Email and Password ")));
                                      return;
                                    }
                                    if (isValidForm) {
                                      // showDialog(
                                      //     context: context,
                                      //     builder: (context) {
                                      //       return Center(
                                      //           child:
                                      //               CircularProgressIndicator());
                                      //     });
                                      signIn().then((value) {
                                        if (value != null)
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) => Profile()));
                                      });

                                      // Navigator.of(context).pop();
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(15.0),
                                    ),
                                  ),
                                  child: Text(
                                    'Login',
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    )),
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void validateEmail(String val){
  //   if(val.isEmpty)
  //   {
  //     setState(() {
  //       _errorMessage = "Email cannot be empty";
  //     });
  //   }else if(!EmailValidator.validate(val,true))
  //   {
  //     setState(() {
  //       _errorMessage = "Invalid email address";
  //     });
  //   }
  //   else{
  //     setState(() {
  //       _errorMessage ="";
  //     });
  //   }
  // }
}
