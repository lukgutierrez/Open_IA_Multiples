import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/////////CHATGPT PRICIPLE//////////////////////////////

class ChatGPT extends StatefulWidget {
  ChatGPT({Key? key}) : super(key: key);

  @override
  State<ChatGPT> createState() => _ChatGPTState();
}

class _ChatGPTState extends State<ChatGPT> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse('https://chat.openai.com/chat'),
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

///////////////////////////////////////////////////////////////
////////////////CHAT-BOTS/////////////////////////////////////
class ChatPoe extends StatefulWidget {
  ChatPoe({Key? key}) : super(key: key);

  @override
  State<ChatPoe> createState() => _ChatPoeState();
}

class _ChatPoeState extends State<ChatPoe> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse(''),
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
