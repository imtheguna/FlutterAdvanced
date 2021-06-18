import 'package:flutter/material.dart';

class TweenAnimationsPage extends StatefulWidget {
  const TweenAnimationsPage({Key? key}) : super(key: key);

  @override
  _TweenAnimationsPageState createState() => _TweenAnimationsPageState();
}

class _TweenAnimationsPageState extends State<TweenAnimationsPage>
    with SingleTickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 5000));
    animation = Tween(begin: 0.0, end: 400.0).animate(controller!);
    animation!.addListener(() {
      setState(() {});
    });
    controller!.forward();
  }

  @override
  void dispose() {
    controller!.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animations"),
      ),
      body: Center(
        child: new Container(
            padding: new EdgeInsets.all(32.0),
            height: animation!.value,
            width: animation!.value,
            child: new Center(
                child: new FlutterLogo(
              size: 300.0,
            ))),
      ),
    );
  }
}
