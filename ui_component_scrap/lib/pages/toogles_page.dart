import 'package:flutter/material.dart';

class TogglesPage extends StatefulWidget {
  const TogglesPage({Key? key}) : super(key: key);

  @override
  State<TogglesPage> createState() => _TogglesPageState();
}

class _TogglesPageState extends State<TogglesPage> {
  bool? _state1 = false;
  bool? _state2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggles'),
      ),
      body: ListView(
        children: [
          Checkbox(
            value: _state1,
            onChanged: (newState) {
              setState(
                () {
                  _state1 = newState;
                },
              );
            },
          ),
          CheckboxListTile(
            value: _state2,
            onChanged: (newState) {
              setState(
                () {
                  _state2 = newState;
                },
              );
            },
            title: const Text('CheckboxListTile'),
            tristate: true,
            selected: true,
          ),
          CheckboxListTile(
            value: _state2,
            onChanged: (newState) {
              setState(
                () {
                  _state2 = newState;
                },
              );
            },
            title: const Text('CheckboxListTile'),
            tristate: true,
            autofocus: true,
          ),
          CheckboxListTile(
            value: true,
            onChanged: (newState) {},
            enabled: false,
            title: const Text('enabled'),
            subtitle: const Text('false'),
          ),
        ],
      ),
    );
  }
}
