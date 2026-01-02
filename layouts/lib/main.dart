import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   decoration: BoxDecoration(color: Colors.white),
    //   child: Center(
    //     child: Text(
    //       textDirection: TextDirection.ltr,
    //       'Hello, world!',
    //       style: TextStyle(fontSize: 32, color: Colors.black87),
    //     ),
    //   ),
    // );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Layout')),
        body: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // DefaultTextStyle.merge(style: style, child: child)
            Icon(Icons.star, color: Colors.green[500]),
            Icon(Icons.star, color: Colors.green[500]),
            Icon(Icons.star, color: Colors.green[500]),
            const Icon(Icons.star, color: Colors.black),
            const Icon(Icons.star, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
