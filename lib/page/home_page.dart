import 'package:chat_gpt_aplication/data/Pages_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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
              buttonSize: Size(40, 40),
              label: Text("Imagen-IA"),
              activeLabel: Text(
                "@LukGutierrez",
                style: TextStyle(fontSize: 10),
              ),
              icon: Icons.image,
              backgroundColor: Colors.black,
              visible: true,
              curve: Curves.bounceInOut,
              children: [
                SpeedDialChild(
                    labelBackgroundColor: Colors.black,
                    child: Image(
                      image: AssetImage("assets/triste.png"),
                    ),
                    backgroundColor: Colors.transparent,
                    onTap: () {}),
              ],
            ),
            /////////CHAT-BOT IA///////////////////
            SpeedDial(
              buttonSize: Size(50, 50),
              label: Text("Chat-IA"),
              activeLabel: Text(
                "@LukGutierrez",
                style: TextStyle(fontSize: 10),
              ),
              icon: Icons.chat_outlined,
              backgroundColor: Colors.black,
              visible: true,
              curve: Curves.bounceInOut,
              children: [
                SpeedDialChild(
                    child: Image(
                      image: AssetImage("assets/google.png"),
                    ),
                    elevation: 0,
                    label: "Google Bard",
                    backgroundColor: Colors.transparent,
                    labelStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                    labelBackgroundColor: Colors.black,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GoogleBard()),
                      );
                    }),
                SpeedDialChild(
                    child: Image(
                      image: AssetImage("assets/poe.png"),
                    ),
                    elevation: 0,
                    label: "Poe IA",
                    backgroundColor: Colors.transparent,
                    labelStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                    labelBackgroundColor: Colors.black,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatPoe()),
                      );
                    }),
              ],
            ),
            /////////////AUDIO_IA//////////////////
            SpeedDial(
              buttonSize: Size(40, 40),
              label: Text("Audio-IA"),
              activeLabel: Text(
                "@LukGutierrez",
                style: TextStyle(fontSize: 10),
              ),
              backgroundColor: Colors.black,
              icon: Icons.music_note_rounded,
              visible: true,
              curve: Curves.bounceInOut,
              children: [
                SpeedDialChild(
                    labelBackgroundColor: Colors.black,
                    child: Image(
                      image: AssetImage("assets/triste.png"),
                    ),
                    backgroundColor: Colors.transparent,
                    onTap: () {}),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: Stack(children: [
          /////IMAGE-BACKGROUND//////

          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
            image: AssetImage("assets/fondoo.gif"),
            fit: BoxFit.cover,
          ))),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatGPT()),
              );
            },
            child: Text("START"),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(260, 45),
              backgroundColor: Colors.white38,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ))
        ]));
  }
}
