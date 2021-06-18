import 'package:flutter/material.dart';

class RotatedBoxPage extends StatefulWidget {
  const RotatedBoxPage({Key? key}) : super(key: key);

  @override
  _RotatedBoxPageState createState() => _RotatedBoxPageState();
}

class _RotatedBoxPageState extends State<RotatedBoxPage> {
  int _turns = 0;
  double _value = 0.0;

  void _onChanged(double vlu) {
    setState(() {
      _value = vlu;
      _turns = _value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rotated Box"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Slider(
              value: _value,
              onChanged: _onChanged,
              min: 0.0,
              max: 8.0,
            ),
            RotatedBox(
              quarterTurns: _turns,
              child: Text(
                "Hello All",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
