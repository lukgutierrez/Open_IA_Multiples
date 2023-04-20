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
        Uri.parse('https://poe.com'),
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

class GoogleBard extends StatefulWidget {
  const GoogleBard({Key? key}) : super(key: key);

  @override
  State<GoogleBard> createState() => _GoogleBardState();
}

class _GoogleBardState extends State<GoogleBard> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse('https://bard.google.com/u/0/'),
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

//////////////PAGES IMAGE DALL/////////////////
//////////////PAGES AUDIO IA///////////////////

