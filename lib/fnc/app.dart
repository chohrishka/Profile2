import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:profile/UI/homep.dart';

import '../router/router.dart';

@RoutePage()
class MyApp extends StatelessWidget {
   MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purpleAccent,
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
      home: const MyHomePage(title: 'Мой профиль'),
      debugShowCheckedModeBanner: false
    );
  }
}

class App extends StatelessWidget {

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context){
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false
    );
  }
}