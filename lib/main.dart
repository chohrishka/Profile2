import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:profile/fnc/app.dart';
import 'package:profile/generated/locale_keys.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();


  runApp(

      EasyLocalization(
          supportedLocales: [Locale('en'), Locale('ru')],
          path: 'assets/languages',
          fallbackLocale: Locale('en'),
          child: MyApp()
      )

  );
}



