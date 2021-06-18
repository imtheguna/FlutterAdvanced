import 'package:flutter/material.dart';

class ListenerPage extends StatefulWidget {
  const ListenerPage({Key? key}) : super(key: key);

  @override
  _ListenerPageState createState() => _ListenerPageState();
}

class _ListenerPageState extends State<ListenerPage>
    with TickerProviderStateMixin {
  Animation? animation;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();

    controller = new AnimationController(
        duration: const Duration(milliseconds: 5000), vsync: this);

    final CurvedAnimation curve =
        new CurvedAnimation(parent: controller!, curve: Curves.easeIn);
    animation = new Tween(begin: 100.0, end: 300.0).animate(curve);
    animation!.addStatusListener(listener);
    controller!.forward();
  }

  void listener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      controller!.reverse();
    } else if (status == AnimationStatus.dismissed) {
      controller!.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listener"),
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
                }),
          )),
    );
  }
}
