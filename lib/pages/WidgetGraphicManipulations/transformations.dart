import 'package:flutter/material.dart';

class TransformationsPage extends StatefulWidget {
  const TransformationsPage({Key? key}) : super(key: key);

  @override
  _TransformationsPageState createState() => _TransformationsPageState();
}

class _TransformationsPageState extends State<TransformationsPage> {
  double _x = 0;
  double _y = 0;
  double _z = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transformations"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text("X"),
                Slider(
                    value: _x,
                    onChanged: (double vlu) => setState(() => _x = vlu))
              ],
            ),
            Row(
              children: [
                Text("Y"),
                Slider(
                    value: _y,
                    onChanged: (double vlu) => setState(() => _y = vlu))
              ],
            ),
            Row(
              children: [
                Text("Z"),
                Slider(
                    value: _z,
                    onChanged: (double vlu) => setState(() => _z = vlu))
              ],
            ),
            Transform(
              transform: Matrix4.skewY(_y),
              child: Transform(
                transform: Matrix4.skewX(_x),
                child: Transform(
                  transform: Matrix4.rotationZ(_z),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Hello All",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
