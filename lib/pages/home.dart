import 'package:flutter/material.dart';
import 'package:flutter_advanced/pages/Animations/animationBuilder.dart';
import 'package:flutter_advanced/pages/Animations/listener.dart';
import 'package:flutter_advanced/pages/Animations/tweenAnimations.dart';
import 'package:flutter_advanced/pages/WidgetGraphicManipulations/boxDecoration.dart';
import 'package:flutter_advanced/pages/WidgetGraphicManipulations/customPainter.dart';
import 'package:flutter_advanced/pages/WidgetGraphicManipulations/opacity.dart';
import 'package:flutter_advanced/pages/WidgetGraphicManipulations/rotatedBox.dart';
import 'package:flutter_advanced/pages/WidgetGraphicManipulations/transformations.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Advanced"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => OpacityPage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.blueAccent,
                  child: Center(child: Text("Opacity")),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => RotatedBoxPage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.blueAccent,
                  child: Center(child: Text("Rotated Box")),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => BoxDecorationPage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.blueAccent,
                  child: Center(child: Text("Box Decoration")),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => TransformationsPage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.blueAccent,
                  child: Center(child: Text("Transformations")),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => CustomPainterPage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.blueAccent,
                  child: Center(child: Text("CustomPainter")),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => TweenAnimationsPage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.blueAccent,
                  child: Center(child: Text("Tween Animations")),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => AnimationBuilderPage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.blueAccent,
                  child: Center(child: Text("Animation Builder")),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => ListenerPage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.blueAccent,
                  child: Center(child: Text("Listener")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
