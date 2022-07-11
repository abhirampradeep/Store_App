// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:store_app_waya/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:store_app_waya/services/auth.dart';
import 'firebase_options.dart';

// import 'package:store_app_waya/loginpage.dart';
GetIt get getIt => GetIt.instance;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();  
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  getIt.registerSingleton(Auth());
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Store App",
      home: homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
