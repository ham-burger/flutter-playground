import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController textEditingController =
      TextEditingController(text: 'text');

  String _calenderText = '0001/01/01';

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
          OutlinedButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                helpText: 'helpText',
                cancelText: 'cancelText キャンセル',
                confirmText: 'confirmText OK',
                selectableDayPredicate: (DateTime day) {
                  return day.weekday != 6 && day.weekday != 7;
                  // return day.day != DateTime.now().day;
                },
                // currentDate: DateTime.now(),
              ).then(
                (value) {
                  setState(
                    () {
                      _calenderText = value!.toString();
                    },
                  );
                },
              );
            },
            child: Text(_calenderText),
          ),
        ],
      ),
    );
  }
}
