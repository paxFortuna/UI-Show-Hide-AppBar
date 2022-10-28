import 'package:flutter/material.dart';
import 'package:ui_hide_show_abbbar/nested_scroll_view/square.dart';

class ScrollAppBar extends StatefulWidget {
  const ScrollAppBar({Key? key}) : super(key: key);

  @override
  State<ScrollAppBar> createState() => _ScrollAppBarState();
}

class _ScrollAppBarState extends State<ScrollAppBar> {
  final items = [
    'item 1',
    'item 2',
    'item 3',
    'item 4',
    'item 5',
    'item 6',
    'item 7',
    'item 8',
    'item 9',
    'item 10',
    'item 11',
    'item 12',
    'item 13',
    'item 14',
    'item 16',
    'item 16',
    'item 17',
    'item 18',
    'item 19',
    'item 20',
    'item 21',
    'item 22',
    'item 23',
    'item 24',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              snap: true,
              title: const Text('Scrollable App Bar'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ],
            )
          ];
        },
        body: ListView.separated(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Square(child: items[index]);
          },
          separatorBuilder: (context, index){
            return const SizedBox(height: 0);
          },
        ),

      ),
    );
  }
}
