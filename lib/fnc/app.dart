import 'package:flutter/material.dart';
import 'package:profile/UI/homep.dart';

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