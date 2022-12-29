import 'dart:math';

import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  const GesturePage({Key? key}) : super(key: key);

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  double _top = 0;
  double _left = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              onPanUpdate: (details) {
                _top = max(0, _top + details.delta.dy);
                _left = max(0, _left + details.delta.dx);
                setState(() {});
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
