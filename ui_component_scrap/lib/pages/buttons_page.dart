import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: ListView(
        children: [
          OutlinedButton(onPressed: () {}, child: Text('OutlinedButton')),
          ElevatedButton(onPressed: () {}, child: Text('ElevatedButton')),
          TextButton(onPressed: () {}, child: Text('TextButton')),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            tooltip: 'add',
          ),
        ],
      ),
    );
  }
}
