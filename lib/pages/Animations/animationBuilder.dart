import 'package:flutter/material.dart';

class AnimationBuilderPage extends StatefulWidget {
  const AnimationBuilderPage({Key? key}) : super(key: key);

  @override
  _AnimationBuilderPageState createState() => _AnimationBuilderPageState();
}

class _AnimationBuilderPageState extends State<AnimationBuilderPage>
    with SingleTickerProviderStateMixin {
  Animation? animation;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 10000), vsync: this);
    final CurvedAnimation curve =
        new CurvedAnimation(parent: controller!, curve: Curves.easeIn);
    animation = new Tween(begin: 0.0, end: 300.0).animate(curve);

    controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Builder"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new AnimatedBuilder(
            animation: animation!,
            builder: (ctx, _) {
              return new Container(
                height: animation!.value,
                width: animation!.value,
                child: new FlutterLogo(),
              );
            },
          ),
        ),
      ),
    );
  }
}
