import 'package:chat_gpt_aplication/data/admob_data.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:webview_flutter/webview_flutter.dart';

/////////CHATGPT PRICIPLE//////////////////////////////

class ChatGPT extends StatefulWidget {
  ChatGPT({Key? key}) : super(key: key);

  @override
  State<ChatGPT> createState() => _ChatGPTState();
}

class _ChatGPTState extends State<ChatGPT> {
  late final WebViewController controller;
  BannerAd? _bannerAd;
  @override
  void initState() {
    super.initState();
    _loadBannerAd();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse('https://chat.openai.com/chat'),
      );
  }

///////////////ANUNCIO////////////////////
  void _loadBannerAd() {
    final adUnitId = AdHelper.bannerAdUnitId;
    _bannerAd = BannerAd(
      adUnitId: adUnitId,
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {});
        },
        onAdFailedToLoad: (ad, error) {
          print('Failed to load a banner ad: ${error.message}');
          ad.dispose();
        },
      ),
    );
    _bannerAd!.load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

//////////////////ANUNCIO///////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: WebViewWidget(controller: controller)),
          //////////////////////ANUNCIO///////////////////////////
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.amber,
                width: _bannerAd!.size.width.toDouble(),
                height: _bannerAd!.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd!),
              )),
        ],
      ),
    );
  }
}

///////////////////////////////////////////////////////////////
// ////////////////CHAT-BOTS/////////////////////////////////////
// class ChatPoe extends StatefulWidget {
//   ChatPoe({Key? key}) : super(key: key);

//   @override
//   State<ChatPoe> createState() => _ChatPoeState();
// }

// class _ChatPoeState extends State<ChatPoe> {
//   late final WebViewController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..loadRequest(
//         Uri.parse('https://poe.com'),
//       );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: WebViewWidget(
//           controller: controller,
//         ),
//       ),
//     );
//   }
// }

// class GoogleBard extends StatefulWidget {
//   const GoogleBard({Key? key}) : super(key: key);

//   @override
//   State<GoogleBard> createState() => _GoogleBardState();
// }

// class _GoogleBardState extends State<GoogleBard> {
//   late final WebViewController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..loadRequest(
//         Uri.parse('https://bard.google.com/u/0/'),
//       );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: WebViewWidget(
//           controller: controller,
//         ),
//       ),
//     );
//   }
// }

// //////////////PAGES IMAGE DALL/////////////////
// //////////////PAGES AUDIO IA///////////////////

