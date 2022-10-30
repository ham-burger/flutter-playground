import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Text(
            'TextTheme',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'displayLarge',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            'displayMedium',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            'displaySmall',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            'headlineLarge',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'headlineMedium',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            'headlineSmall',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            'titleLarge',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'titleMedium',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            'titleSmall',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            'bodyLarge',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            'bodyMedium',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'bodySmall',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Container(
            height: 2,
            margin: const EdgeInsets.all(8),
            color: Colors.grey,
          ),
          Text(
            'Buttons',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
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
