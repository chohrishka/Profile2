// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
//
// import '../router/router.dart';
//
//
//
// @RoutePage()
// class NewsPage extends StatelessWidget {
//   // final List<News> NewsList = <News>[
//   //   const News(
//   //     title: 'Новость 1',
//   //     content: 'Любая новость.',
//   //   ),
//   //   const News(
//   //     title: 'Новость 2',
//   //     content: 'Это вторая любая новость.',
//   //   ),
//   // ];
//
//   NewsPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Новости'),
//       ),
//       body: ListView.builder(
//         itemCount: NewsList.length,
//         itemBuilder: (context, index) {
//           return Card(
//             margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 ListTile(
//                   title: Text(NewsList[index].title),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     NewsList[index].content,
//                     style: TextStyle(fontSize: 16.0),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }