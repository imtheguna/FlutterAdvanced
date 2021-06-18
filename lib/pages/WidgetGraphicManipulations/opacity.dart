import 'package:flutter/material.dart';

class OpacityPage extends StatefulWidget {
  const OpacityPage({Key? key}) : super(key: key);

  @override
  _OpacityState createState() => _OpacityState();
}

class _OpacityState extends State<OpacityPage> {
  bool _visible = false;
  @override
  void initState() {
    super.initState();
    _visible = true;
  }

  void _toggleVisible() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Opacity(
              opacity: _visible ? 1.0 : 0.2,
              child: const Text(
                "Now you see me, now you don't!",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
                onPressed: _toggleVisible,
                child: Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.amber,
                  child: Center(child: Text("Change Opacity")),
                )),
          ],
        ),
      ),
    );
  }
}
