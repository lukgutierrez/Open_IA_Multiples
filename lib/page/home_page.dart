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
                MySlidingButton(
                    text: "hola", width: 200, height: 200, borderRadius: 30),
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

class MySlidingButton extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  final double borderRadius;

  MySlidingButton({
    required this.text,
    required this.width,
    required this.height,
    required this.borderRadius,
  });

  @override
  _MySlidingButtonState createState() => _MySlidingButtonState();
}

class _MySlidingButtonState extends State<MySlidingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  bool _isAnimating = false;
  double _position = 0.0;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    )..addListener(() {
        setState(() {
          _position = _animationController.value * widget.width;
        });
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startAnimation() {
    if (!_isAnimating) {
      _animationController.forward();
      _isAnimating = true;
    }
  }

  void _reverseAnimation() {
    if (_isAnimating) {
      _animationController.reverse();
      _isAnimating = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _startAnimation(),
      onTapUp: (_) => _reverseAnimation(),
      onTapCancel: () => _reverseAnimation(),
      child: Container(
        width: widget.width,
        height: widget.height,
        child: Stack(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(widget.text),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: Offset.zero,
                  end: Offset(_position, 0.0),
                ).animate(_animationController),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(widget.text),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(widget.borderRadius),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
