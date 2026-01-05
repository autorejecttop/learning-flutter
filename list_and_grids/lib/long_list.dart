import 'package:flutter/material.dart';

class LongList extends StatelessWidget {
  LongList({super.key});

  final items = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                prototypeItem: ListTile(title: Text(items.first)),
                itemBuilder: (context, index) {
                  return ListTile(title: Text(items[index]));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
