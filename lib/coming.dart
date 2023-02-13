import 'package:flutter/material.dart';

class Coming extends StatelessWidget {
  const Coming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text("Coming Soon!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),),
      ),
    );
  }
}
