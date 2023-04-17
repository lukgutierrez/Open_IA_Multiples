import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/////////PAGES CHATBOT////////////////////

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
//////////////PAGES IMAGE DALL/////////////////
//////////////PAGES AUDIO IA///////////////////

