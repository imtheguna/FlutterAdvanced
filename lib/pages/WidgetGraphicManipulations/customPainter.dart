import 'package:flutter/material.dart';

class CustomPainterPage extends StatefulWidget {
  const CustomPainterPage({Key? key}) : super(key: key);

  @override
  _CustomPainterPageState createState() => _CustomPainterPageState();
}

class _CustomPainterPageState extends State<CustomPainterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("customPainter"),
      ),
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new CustomPaint(
                  painter: new _painter(),
                ),
                new Text(
                  'Hello',
                  style: new TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
    );
  }
}

class _painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //All our work will be done

    final radius = 100.0;
    final Offset offset = new Offset(0.0, 75.0);
    final Paint paint = new Paint()
      ..isAntiAlias = true
      ..strokeWidth = 10.0
      ..color = Colors.blue[500]!
      ..style = PaintingStyle.stroke;

    final Offset bodystart = new Offset(0.0, 100.0);
    final Offset bodyend = new Offset(0.0, 0.0);

    canvas.drawCircle(offset, radius, paint);
    canvas.drawLine(bodystart, bodyend, paint);

    final Rect rect = new Rect.fromCircle(center: offset, radius: radius);
    final Paint rectpaint = new Paint()
      ..isAntiAlias = true
      ..strokeWidth = 10.0
      ..color = Colors.orange
      ..style = PaintingStyle.stroke;

    canvas.drawRect(rect, rectpaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
