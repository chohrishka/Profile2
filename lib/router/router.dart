import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../UI/homep.dart';
import '../fnc/app.dart';
import '../pages/newspage.dart';
import '../pages/settings.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|App,Route')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page:MyRoute.page, initial: true),
    AutoRoute(page: NewsRoute.page),
    AutoRoute(page: SettingsRoute.page)
    /// routes go here
  ];
}