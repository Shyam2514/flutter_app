import 'package:flutter/material.dart';
import 'package:ticket_app/hotel_api.dart';
import 'package:ticket_app/homepage.dart';

import 'package:ticket_app/single_trip.dart';
import 'package:ticket_app/testapi.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First(),
    );
  }
}
