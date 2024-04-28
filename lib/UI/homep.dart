import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'dart:math' show Random;
import 'package:profile/generated/locale_keys.g.dart';

import '../router/router.dart';

//import '../pages/settings.dart';
@RoutePage()
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
        leading:
        Row(
          children: [
            IconButton(
            onPressed: () => context.router.push(const SettingsRoute()),
            icon: const Icon(Icons.settings),
            ),

            Expanded(
              flex: 1,
              child: Container(
                height: 56.0,
              child: IconButton(
              onPressed: () {
              context.router.push(const NewsRoute());
              },
              icon: const Icon(Icons.feed),
              ),
    ),
            ),
              ],
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(widget.title),
        ),
        ),


      body: Center(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/cats/cat.jpg',
                    width: 200.0,
                    height: 185.0
                ),

                TextButton(style: TextButton.styleFrom(
                  foregroundColor: Colors.purple,
                ),
                    onPressed: _incrementCounter, child: Text(LocaleKeys.invite_friend.tr())),
                TextButton(style: TextButton.styleFrom(
                  foregroundColor: Colors.purple,
                ),
                    onPressed: _min, child: Text(LocaleKeys.remove_from_friends.tr())),
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
                      color: Colors.purple, // Цвет текста
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                        LocaleKeys.birthday.tr()
                    ),
                    const Text(
                      '09.11.2001',
                      style: TextStyle(
                        fontSize: 15.0, // Размер шрифта
                        color: Colors.purple, // Цвет текста
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Text(
                        LocaleKeys.city.tr()
                    ),
                    const Text(
                      'Владивосток',
                      style: TextStyle(
                        fontSize: 15.0, // Размер шрифта
                        color: Colors.purple, // Цвет текста
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                        LocaleKeys.marital_status.tr()
                    ),
                    const Text(
                      'Не замужем',
                      style: TextStyle(
                        fontSize: 15.0, // Размер шрифта
                        color: Colors.purple, // Цвет текста
                      ),
                    ),],),
                Row(
                  children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(16.0),
                          textStyle: const TextStyle(fontSize: 15),
                          backgroundColor: Colors.purple
                      ),
                      onPressed:_showInfo, child: Text(LocaleKeys.more_info.tr()),),
                    Text(
                        _info),
                  ],),
                Row(
                  children: <Widget>[
                    Text(
                        LocaleKeys.friends.tr()),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '$_counter',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: LangvButton(butFnx: () {
                                                if (context.locale == const Locale("ru")) {
                          context.setLocale(const Locale("en"));
                                                } else {
                          context.setLocale(const Locale("ru"));
                                                }
                                              },),
                        ),

                      ],

                    ),
                  ],

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class LangvButton extends StatelessWidget {
  Function() butFnx;
  LangvButton({super.key, required this.butFnx});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: butFnx,
        child: Padding(
          padding: const EdgeInsets.only(top: 9, bottom: 14),
          child: Text(
            context.locale.toString(),
            style: const TextStyle(color: Colors.purple, fontSize: 15),
          ),
        ),
    );
  }





}