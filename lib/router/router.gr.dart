// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MyRoute.name: (routeData) {
      final args =
          routeData.argsAs<MyRouteArgs>(orElse: () => const MyRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MyApp(key: args.key),
      );
    },
    MyHomeRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MyHomePage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    NewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
  };
}

/// generated route for
/// [MyApp]
class MyRoute extends PageRouteInfo<MyRouteArgs> {
  MyRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MyRoute.name,
          args: MyRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MyRoute';

  static const PageInfo<MyRouteArgs> page = PageInfo<MyRouteArgs>(name);
}

class MyRouteArgs {
  const MyRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MyRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MyHomePage]
class MyHomeRoute extends PageRouteInfo<MyHomeRouteArgs> {
  MyHomeRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          MyHomeRoute.name,
          args: MyHomeRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static const PageInfo<MyHomeRouteArgs> page = PageInfo<MyHomeRouteArgs>(name);
}

class MyHomeRouteArgs {
  const MyHomeRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'MyHomeRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [NewsPage]
class NewsRoute extends PageRouteInfo<void> {
  const NewsRoute({List<PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
