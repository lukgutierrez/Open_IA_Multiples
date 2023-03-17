import 'package:flutter/material.dart';
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
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          /////IMAGE-BACKGROUND//////
          Expanded(
            child: Container(
              child: Image(image: AssetImage("assets/fondo.gif")),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PageOne()),
                      );
                    },
                    child: Text("INICIAR")),
                MySlider()
              ],
            ),
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
//"https://poe.com",

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _value = 50.0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _value,
      min: 0,
      max: 100,
      divisions: 10,
      label: _value.round().toString(),
      onChanged: (double value) {
        setState(() {
          _value = value;
        });
      },
    );
  }
}
