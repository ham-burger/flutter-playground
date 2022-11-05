import 'package:flutter/material.dart';

class FlexibleListPage extends StatefulWidget {
  const FlexibleListPage({Key? key}) : super(key: key);

  @override
  State<FlexibleListPage> createState() => _FlexibleListPageState();
}

class _FlexibleListPageState extends State<FlexibleListPage> {
  bool _expand = false;
  bool _filter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible List'),
      ),
      body: ListView(
        children: [
          OutlinedButton(
            onPressed: () {
              setState(() {
                _expand = !_expand;
              });
            },
            child: Text('表示状態変更'),
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                _filter = !_filter;
              });
            },
            child: Text('検索条件変更'),
          ),
          _listTile(context, _expand, _filter),
          _listTile(context, _expand, _filter),
          _listTile(context, _expand, _filter),
        ],
      ),
    );
  }

  Widget _listTile(BuildContext context, bool expand, bool filter) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Chip(
                label: Text(
                  '請負済',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.green,
              ),
              _line('発注日', '2022/11/05'),
            ],
          ),
          Text(
            'テスト工事12345',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '400000円',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          if (filter)
            Column(
              children: [
                _line('案件名', 'デモ案件リフォーム'),
                _line('現場監督', '現場太郎'),
              ],
            ),
          if (expand)
            Column(
              children: [
                Divider(
                  color: Colors.grey,
                ),
                _line('案件名', 'デモ案件リフォーム'),
                _line('現場監督', '現場太郎'),
                _line('発注会社', '株式会社Hachuuu'),
                _line('発注種', '工務'),
                _line('発注方法', 'オンライン'),
              ],
            ),
        ],
      ),
    );
  }

  Widget _line(String p1, String p2) {
    return Row(
      children: [
        Text(p1),
        Text(' : '),
        Text(p2),
      ],
    );
  }
}
