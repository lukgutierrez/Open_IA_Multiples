import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Center(
            child: Text(
              "Iniciar",
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageOne()),
            );
          },
        ),
        backgroundColor: Colors.black,
        body: Stack(children: [
          /////IMAGE-BACKGROUND//////

          Container(
            child: Image(image: AssetImage("assets/fondo.gif")),
          ),
          Row(
            children: [
              SpeedDial(
                backgroundColor: Color(0xFFF00A884),
                animatedIcon: AnimatedIcons.menu_close,
                visible: true,
                curve: Curves.bounceInOut,
                children: [
                  SpeedDialChild(
                      child: Icon(Icons.photo),
                      backgroundColor: Color(0xFFF00A884),
                      onTap: () {}),
                  SpeedDialChild(
                      child: Icon(Icons.block),
                      backgroundColor: Color(0xFFF00A884),
                      onTap: () {}),
                  SpeedDialChild(
                      child: Icon(Icons.camera_front),
                      backgroundColor: Color(0xFFF00A884),
                      labelStyle: TextStyle(fontSize: 20.0),
                      onTap: () {}),
                ],
              ),
            ],
          ),
        ]));
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: WebView(
        initialUrl: "https://chat.openai.com/chat",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    ));
  }
}

class Pagetwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: WebView(
        initialUrl: "https://poe.com",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    ));
  }
}
