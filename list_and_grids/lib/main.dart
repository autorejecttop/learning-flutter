// import 'package:flutter/material.dart';

// void main() {
//   runApp(MainApp());
// }

// class MainApp extends StatelessWidget {
//   MainApp({super.key});

//   final items = List<ListItem>.generate(
//     1000,
//     (i) => i % 6 == 0
//         ? HeadingItem('Heading $i')
//         : MessageItem('Sender $i', 'Message body $i'),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 200,
//                 child: ListView(
//                   children: const <Widget>[
//                     ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                     ListTile(
//                       leading: Icon(Icons.photo_album),
//                       title: Text('Album'),
//                     ),
//                     ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
//                   ],
//                 ),
//               ),

//               SizedBox(
//                 height: 200,
//                 child: Expanded(
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       for (final color in Colors.primaries)
//                         Container(width: 160, color: color),
//                     ],
//                   ),
//                 ),
//               ),

//               SizedBox(
//                 height: 200,
//                 child: GridView.count(
//                   // scrollDirection: Axis.horizontal,
//                   // Create a grid with 2 columns.
//                   // If you change the scrollDirection to horizontal,
//                   // this produces 2 rows.
//                   crossAxisCount: 2,
//                   // Generate 100 widgets that display their index in the list.
//                   children: List.generate(100, (index) {
//                     return Center(
//                       child: Text(
//                         'Item $index',
//                         style: TextTheme.of(context).headlineSmall,
//                       ),
//                     );
//                   }),
//                 ),
//               ),

//               SizedBox(
//                 height: 200,
//                 child: ListView.builder(
//                   itemBuilder: (context, index) {
//                     final item = items[index];

//                     return ListTile(
//                       title: item.buildTitle(context),
//                       subtitle: item.buildSubtitle(context),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// /// The base class for the different types of items the list can contain.
// abstract class ListItem {
//   /// The title line to show in a list item.
//   Widget buildTitle(BuildContext context);

//   /// The subtitle line, if any, to show in a list item.
//   Widget buildSubtitle(BuildContext context);
// }

// /// A ListItem that contains data to display a heading.
// class HeadingItem implements ListItem {
//   final String heading;

//   HeadingItem(this.heading);

//   @override
//   Widget buildTitle(BuildContext context) {
//     return Text(heading, style: Theme.of(context).textTheme.headlineSmall);
//   }

//   @override
//   Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
// }

// /// A ListItem that contains data to display a message.
// class MessageItem implements ListItem {
//   final String sender;
//   final String body;

//   MessageItem(this.sender, this.body);

//   @override
//   Widget buildTitle(BuildContext context) => Text(sender);

//   @override
//   Widget buildSubtitle(BuildContext context) => Text(body);
// }

import 'package:flutter/material.dart';
// import 'package:list_and_grids/list_with_spaced_items.dart';
import 'package:list_and_grids/long_list.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const ListWithSpacedItems();
    return LongList();
  }
}
