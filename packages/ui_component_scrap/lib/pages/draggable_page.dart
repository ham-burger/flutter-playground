import 'package:flutter/material.dart';

class DraggablePage extends StatefulWidget {
  const DraggablePage({Key? key}) : super(key: key);

  @override
  State<DraggablePage> createState() => _DraggablePageState();
}

class _DraggablePageState extends State<DraggablePage> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Draggable'),
      ),
      body: Column(
        children: [
          Draggable(
            data: 10,
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.blue,
              child: Text('draggable'),
            ),
            feedback: Container(
              child: Text(
                'feedback',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              padding: const EdgeInsets.all(16),
              height: 50,
              width: 300,
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 200,
          ),
          DragTarget<int>(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return Container(
                padding: const EdgeInsets.all(16),
                child: Text('drag target $_value'),
                color: Colors.yellow,
              );
            },
            onAccept: (data) {
              setState(() {
                _value += data;
              });
            },
          ),
        ],
      ),
    );
  }
}
