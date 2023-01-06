import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:isar_app/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

late Isar isar;

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    initializeIsar();
  }

  Future<void> initializeIsar() async {
    isar = await Isar.open([
      ItemSchema,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(children: [
        ListTile(
          title: Text("Hello"),
          subtitle: Text("World"),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ButtonAdditionalPage(),
              ),
            );
          },
        ),
      ]),
    );
  }
}

class ButtonAdditionalPage extends StatefulWidget {
  const ButtonAdditionalPage({Key? key}) : super(key: key);

  @override
  State<ButtonAdditionalPage> createState() => _ButtonAdditionalPageState();
}

class _ButtonAdditionalPageState extends State<ButtonAdditionalPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonAdditionalPage"),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (data == null || data.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                final item = data[index];
                return ListTile(
                  title: Text(item.name ?? ""),
                );
              },
              itemCount: data.length,
            );
          }
        },
        future: () async {
          return isar.items.where().findAll();
        }(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newItem = Item()..name = "name - ${DateTime.now()}";
          await isar.writeTxn(() async {
            await isar.items.put(newItem); // insert & update
          });
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
