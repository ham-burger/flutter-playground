import 'package:flutter/material.dart';

class SliverPage extends StatelessWidget {
  const SliverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Sliver App Bar'),
            floating: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: FittedBox(
                fit: BoxFit.contain,
                child: Image.network(
                  'https://picsum.photos/200/300?random=1',
                ),
              ),
            ),
            pinned: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text('Item $index'),
              ),
              childCount: 20,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                color: Colors.primaries[index % Colors.primaries.length],
                child: Center(
                  child: Text('Item $index'),
                ),
              ),
              childCount: 20,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
