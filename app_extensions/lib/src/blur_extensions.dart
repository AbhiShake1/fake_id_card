import 'dart:ui';

import 'package:flutter/material.dart';

/// {@template blur_extensions}
/// create a blurred widget
/// {@endtemplate}
extension BlurX on Widget {
  /// {@template blur}
  /// create a blurred widget
  /// {@endtemplate}
  Widget blur({double sigmaX = 1, double sigmaY = 1, bool blur = true}) => !blur
      ? this
      : ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
            child: this,
          ),
        );
}
