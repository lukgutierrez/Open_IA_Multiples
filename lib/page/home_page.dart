import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final iconList = <IconData>[Icons.star, Icons.star, Icons.star, Icons.abc];
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeColor: Colors.white,
        inactiveColor: Colors.white,
        activeIndex: 0,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (b) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Pagetwo()),
          );
        },
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          /////IMAGE-BACKGROUND//////

          Container(
            child: Image(image: AssetImage("assets/fondo.gif")),
          ),
        ],
      ),
    );
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
