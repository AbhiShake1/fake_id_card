import 'package:flutter/material.dart';

extension NavigatorX on BuildContext {
  NavigatorState get navigator => Navigator.of(this);

  void pushNamedAndRemoveAll(String routeName) =>
      navigator.pushNamedAndRemoveUntil(
        routeName,
        (_) => false,
      );

  void popAllTo(String route) => navigator.popUntil(ModalRoute.withName(route));

  void pushReplacementNamed(String routeName) =>
      navigator.pushReplacementNamed(routeName);

  void popAndPushNamed(String routeName) =>
      navigator.popAndPushNamed(routeName);

  void pushNamed(String routeName) => navigator.pushNamed(routeName);

  void pushAndRemoveUntil(
    Route<dynamic> page,
    bool Function(Route<dynamic>) predicate,
  ) =>
      navigator.pushAndRemoveUntil(
        page,
        predicate,
      );

  void push(Route<dynamic> page) => navigator.push(page);

  void pop() => navigator.maybePop();
}
