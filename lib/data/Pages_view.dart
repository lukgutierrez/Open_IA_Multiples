import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/////////PAGES CHATBOT////////////////////

// class PageOne extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child:

//       WebView(
//         initialUrl: "https://chat.openai.com/chat",
//         javascriptMode: JavascriptMode.unrestricted,
//       ),
//     ));
//   }
// }

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://openai.com/blog'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}

//  class Pagetwo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: const WebView(
//         initialUrl: "https://poe.com",
//         javascriptMode: JavascriptMode.unrestricted,
//       ),
//     ));
//   }
// }
//////////////PAGES IMAGE DALL/////////////////
//////////////PAGES AUDIO IA///////////////////
