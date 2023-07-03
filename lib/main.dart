import 'package:chat_gpt_aplication/page/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.black,),
        debugShowCheckedModeBanner: false,
        title: 'ChatGPT',
        home: HomePage());
  }
}
