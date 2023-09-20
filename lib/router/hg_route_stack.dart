import 'package:flutter/material.dart';

class RouteStack with ChangeNotifier {
  List<String> _routeStack = [];

  /// Need to handle later: Kunal
  // ignore: unnecessary_getters_setters
  List<String> get route => _routeStack;

  set route(List<String> routeStack) {
    _routeStack = routeStack;
  }
}
