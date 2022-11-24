import 'package:flutter/material.dart';

import 'pages/loginpage/loginpage.dart';


void main(){
  runApp(const myApp());
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginForm(),
    );
  }
}


