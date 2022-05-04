import 'package:flutter/material.dart';

import 'homepage/screen_homepage.dart';

void main()=>runApp(AmazonApp());

class AmazonApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "amazon ui",
      home:AmazonHomePage(),
    );
  }
}