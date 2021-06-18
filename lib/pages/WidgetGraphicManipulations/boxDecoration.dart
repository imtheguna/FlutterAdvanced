import 'package:flutter/material.dart';

class BoxDecorationPage extends StatefulWidget {
  const BoxDecorationPage({Key? key}) : super(key: key);

  @override
  _BoxDecorationPageState createState() => _BoxDecorationPageState();
}

class _BoxDecorationPageState extends State<BoxDecorationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Box Decoration"),
        ),
        body: Center(
          child: Container(
            child: FlutterLogo(
              size: 80,
            ),
            padding: EdgeInsets.all(32.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2.0),
                gradient: RadialGradient(colors: [
                  Colors.amber,
                  Colors.purple,
                ])),
          ),
        ));
  }
}
