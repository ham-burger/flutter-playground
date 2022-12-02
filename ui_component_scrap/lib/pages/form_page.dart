import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController textEditingController =
      TextEditingController(text: 'text');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: ListView(
        children: [
          TextField(
            controller: textEditingController,
            onChanged: (value) {
              print('onChanged:' + value);
            },
            onTap: () {
              print('onTap');
            },
            onEditingComplete: () {
              print('onEditingComplete');
            },
            onSubmitted: (value) {
              print('onSubmitted: $value');
              print('textEditingController: ' + textEditingController.text);
            },
            decoration: const InputDecoration(
              labelText: 'TextField',
              hintText: 'hint',
            ),
          ),
        ],
      ),
    );
  }
}
