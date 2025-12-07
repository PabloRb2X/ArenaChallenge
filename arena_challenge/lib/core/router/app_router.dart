import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../features/splash/view/splash_page.dart';
import '../../features/home/presentation/view/home_page.dart';
import '../../features/preferences/presentation/view/prefs_list_page.dart';
import '../../features/preferences/presentation/view/prefs_new_page.dart';
import '../../features/preferences/presentation/view/prefs_detail_page.dart';

class AppRouter {
  static final FluroRouter router = FluroRouter();

  static const String splash = '/';
  static const String apiList = '/api-list';
  static const String prefsList = '/prefs';
  static const String prefsNew = '/prefs/new';
  static const String prefsDetail = '/prefs/:id';

  static void setupRouter() {
    router.notFoundHandler = Handler(
      handlerFunc: (context, params) =>
          const Scaffold(body: Center(child: Text('Route missing'))),
    );

    router.define(
      splash,
      handler: Handler(handlerFunc: (context, params) => const SplashPage()),
    );

    router.define(
      apiList,
      handler: Handler(handlerFunc: (context, params) => const HomePage()),
    );

    router.define(
      prefsList,
      handler: Handler(handlerFunc: (context, params) => const PrefsListPage()),
    );

    router.define(
      prefsNew,
      handler: Handler(handlerFunc: (context, params) => const PrefsNewPage()),
    );

    router.define(
      prefsDetail,
      handler: Handler(
        handlerFunc: (context, params) {
          final id = params['id']?.first;
          return PrefsDetailPage(id: id!);
        },
      ),
    );
  }
}
