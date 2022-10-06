import 'package:flutter/material.dart';

extension SizeX on Widget {
  Widget size({double? w, double? h}) => SizedBox(
        width: w,
        height: h,
        child: this,
      );
}
