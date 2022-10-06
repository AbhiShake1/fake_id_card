import 'package:flutter/material.dart';

/// {@template button_extensions}
/// convert any widget to a button
/// {@endtemplate}
extension ButtonX on Widget {
  /// {@template onClick}
  /// trigger action when a widget is clicked
  /// {@endtemplate}
  Widget onClick(VoidCallback? onClick) => GestureDetector(
        onTap: onClick,
        child: this,
      );
}
