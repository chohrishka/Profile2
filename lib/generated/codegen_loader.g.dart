// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "invite_friend": "Add to friends",
  "social_media": "VKontakte",
  "birthday": "Birthday: ",
  "city": "City: ",
  "marital_status": "Marital status: ",
  "more_info": "About me: ",
  "friends": "Number of friends: ",
  "remove_from_friends": "Remove from friends"
};
static const Map<String,dynamic> ru = {
  "invite_friend": "Добавить в друзья",
  "social_media": "ВКонтакте",
  "birthday": "Дата рождения: ",
  "city": "Город: ",
  "marital_status": "Семейное положение: ",
  "more_info": "О себе: ",
  "friends": "Количество друзей: ",
  "remove_from_friends": "Удалить из друзей"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ru": ru};
}
