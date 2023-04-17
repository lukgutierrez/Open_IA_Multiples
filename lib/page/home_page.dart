import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ///////IMAGE-IA//////////////////
            SpeedDial(
              buttonSize: Size(45, 45),
              label: Text("Imagen-IA"),
              activeLabel: Text(
                "@LukGutierrez",
                style: TextStyle(fontSize: 12),
              ),
              icon: Icons.image,
              backgroundColor: Colors.black,
              visible: true,
              curve: Curves.bounceInOut,
              children: [
                SpeedDialChild(
                    child: Icon(Icons.photo),
                    backgroundColor: Colors.pink,
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
            /////////CHAT-BOT IA///////////////////
            SpeedDial(
              buttonSize: Size(50, 50),
              label: Text("Chat-IA"),
              activeLabel: Text(
                "@LukGutierrez",
                style: TextStyle(fontSize: 8),
              ),
              icon: Icons.chat_outlined,
              backgroundColor: Colors.black,
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
            /////////////AUDIO_IA//////////////////
            SpeedDial(
              buttonSize: Size(45, 45),
              label: Text("Audio-IA"),
              activeLabel: Text(
                "@LukGutierrez",
                style: TextStyle(fontSize: 12),
              ),
              backgroundColor: Colors.black,
              icon: Icons.music_note_rounded,
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
        backgroundColor: Colors.black,
        body: Stack(children: [
          /////IMAGE-BACKGROUND//////

          Container(
            child: Image(image: AssetImage("assets/fondo.gif")),
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    print("HOLA RAT TOMY MAUSE");
                    PageOne();
                  },
                  child: Text("INICIAR")))
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
