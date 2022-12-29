import 'package:flutter/material.dart';
import 'package:ui_component_scrap/pages/buttons_page.dart';
import 'package:ui_component_scrap/pages/draggable_page.dart';
import 'package:ui_component_scrap/pages/form_page.dart';
import 'package:ui_component_scrap/pages/gesture_page.dart';
import 'package:ui_component_scrap/pages/layout_page.dart';
import 'package:ui_component_scrap/pages/sliver_page.dart';
import 'package:ui_component_scrap/pages/texts_page.dart';
import 'package:ui_component_scrap/pages/toogles_page.dart';

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
            title: Text('full screen modal'),
            onTap: () => Navigator.of(context).push(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const TextsPage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(0.0, 1.0);
                  const end = Offset.zero;
                  const curve = Curves.ease;

                  var tween = Tween(begin: begin, end: end)
                      .chain(CurveTween(curve: curve));

                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                },
                fullscreenDialog: true,
              ),
            ),
          ),
          ListTile(
            title: Text('toggles'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TogglesPage(),
              ),
            ),
          ),
          ListTile(
            title: Text('forms'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const FormPage(),
              ),
            ),
          ),
          ListTile(
            title: Text('draggable'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const DraggablePage(),
              ),
            ),
          ),
          ListTile(
            title: Text('gesture detector'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const GesturePage(),
              ),
            ),
          ),
          ListTile(
            title: Text('layout'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LayoutPage(),
              ),
            ),
          ),
          ListTile(
            title: Text('sliver'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SliverPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
