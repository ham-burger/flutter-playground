import 'package:flutter/material.dart';

class TogglesPage extends StatefulWidget {
  const TogglesPage({Key? key}) : super(key: key);

  @override
  State<TogglesPage> createState() => _TogglesPageState();
}

class _TogglesPageState extends State<TogglesPage> {
  bool? _state1 = false;
  bool? _state2 = false;
  int? _state3 = null;
  bool _state4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggles'),
      ),
      body: ListView(
        children: [
          Text(
            'checkbox',
            style: Theme.of(context).textTheme.titleLarge,
          ),
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
          Text(
            'radio',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Radio(
            value: 1,
            groupValue: _state3,
            onChanged: (newState) {
              setState(
                () {
                  _state3 = newState;
                },
              );
            },
          ),
          RadioListTile(
            value: 3,
            groupValue: _state3,
            onChanged: (newState) {
              setState(
                () {
                  _state3 = newState;
                },
              );
            },
            title: Text('list tile'),
          ),
          RadioListTile(
            value: 4,
            groupValue: _state3,
            onChanged: (newState) {
              setState(
                () {
                  _state3 = newState;
                },
              );
            },
            title: Text('lite tile 2'),
            subtitle: Text('toggleable'),
            toggleable: true,
          ),
          Text(
            'switch',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Switch(
            value: _state4,
            onChanged: (value) {
              setState(
                () {
                  _state4 = value;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
