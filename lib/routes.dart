import 'package:flutter/material.dart';
import 'package:holo_app/pages/home_page.dart';
import 'package:holo_app/pages/not_found.page.dart';
import 'package:holo_app/pages/yagoo_smile_page.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
    case YagooSmilePage.routeName:
      return YagooSmilePage.route();
    case HomePage.routeName:
      return HomePage.route();
    default:
      return NotFoundPage.route();
  }
}
