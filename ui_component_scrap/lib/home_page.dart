import 'package:flutter/material.dart';
import 'package:ui_component_scrap/pages/buttons_page.dart';
import 'package:ui_component_scrap/pages/flexible_list_page.dart';
import 'package:ui_component_scrap/pages/texts_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('texts'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TextsPage(),
              ),
            ),
          ),
          ListTile(
            title: Text('buttons'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ButtonsPage(),
              ),
            ),
          ),
          ListTile(
            title: Text('flexible list'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const FlexibleListPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
