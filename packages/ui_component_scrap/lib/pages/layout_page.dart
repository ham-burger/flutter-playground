import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout'),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: ColoredBox(
              color: Colors.amber,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200,
              minWidth: double.infinity,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("tap me!"),
            ),
          ),
          Row(
            children: [
              Text("hello"),
              Expanded(
                child: Text("hello"),
                flex: 1,
              ),
              Expanded(
                child: Text("hello"),
                flex: 2,
              ),
              Text("hello"),
            ],
          )
        ],
      ),
    );
  }
}
