import 'package:flutter/material.dart';
import 'package:flutter_crypto/home_page.dart';
import 'package:http/http.dart' as http ;
import 'dart:convert';
import 'package:flutter_crypto/dependency_injection.dart';


void main() async{
  Injector.configure(Flavor.PROD);

  runApp(MyApp());


}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}

