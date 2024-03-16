import 'package:flutter/material.dart';
import 'dart:math' show Random;

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
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 33.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      home: const MyHomePage(title: 'ВКонтакте'),
        debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _counter = 0;
  String _info = '';

  List<String> info = [
    "мое любимое занятие - просмотр аниме и фильмов",
    "моя любимая музыка - рэп, хайперпоп, поп-музыка",
    "мой любимый фильм - 'Начало' "
  ];

  void _showInfo() {
    setState(() {
      _info = info[Random().nextInt(info.length)];
    });
  }

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  void _min() {
    setState(() {

      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),


      body: Center(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Image.asset('assets/cats/cat.jpg',
                    width: 200.0,
                    height: 185.0
                ),

                TextButton(style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                ),
                  onPressed: _incrementCounter, child: const Text('Добавить в друзья')),
                TextButton(style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                ),
                    onPressed: _min, child: const Text('Удалить из друзей'))
                ],
            ),
            const SizedBox(width: 10),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text(
                        'Бацарашкина Анастасия',
                          style: TextStyle(
                          fontSize: 25.0, // Размер шрифта
                          color: Colors.blue, // Цвет текста
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                            'День рождения:'
                        ),
                        Text(
                          ' 09.11.2001',
                          style: TextStyle(
                          fontSize: 15.0, // Размер шрифта
                          color: Colors.blue, // Цвет текста
                          ),
                        ),
                      ],
                    ),

                    const Row(
                      children: [
                        Text(
                            'Город:'
                        ),
                        Text(
                          ' Владивосток',
                          style: TextStyle(
                            fontSize: 15.0, // Размер шрифта
                            color: Colors.blue, // Цвет текста
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: <Widget>[
                        Text(
                            'Семейное положение:'
                        ),
                        Text(
                          ' Не замужем',
                           style: TextStyle(
                             fontSize: 15.0, // Размер шрифта
                            color: Colors.blue, // Цвет текста
                          ),
                        ),],),
                    Row(
                      children: <Widget>[
                        TextButton(
                        style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 15),
                        backgroundColor: Colors.blue
                      ),
                        onPressed:_showInfo, child: const Text('О себе:'),),
                        Text(
                          _info),
                        ],),
                    Row(
                      children: <Widget>[ const Text(
                            'Количество друзей: '),
                            Text(
                              '$_counter',
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                            ),],

                        ),
                        ],
                ),
              ],
            ),
        ),
    );
  }
}
