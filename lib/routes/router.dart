import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hendshake/constants/common_no_data_error.dart';
import 'package:hendshake/pages/home_page.dart';
import 'package:hendshake/pages/history_page.dart';
import 'package:hendshake/pages/main_page.dart';

import 'routes_path.dart';

Route<dynamic> generateRoutes(RouteSettings settings) {
  log('xxxx ROUTE : ${settings.name}');

  switch (settings.name) {
    case Routes.MAIN:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const MainPage(),
      );
    case Routes.HISTORY:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const HistoryPage(),
      );

    case Routes.HOME:
      final String argument = settings.arguments as String;
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => HomePage(
          selectedType: argument,
        ),
      );

    default:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => CommonNoDataError(text: 'Page Not Found'),
      );
  }
}
