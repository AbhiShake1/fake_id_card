import 'package:app_extensions/src/text_builder/text_builder.dart';

extension NumX on num {
  TextBuilder get text => TextBuilder(toString());

  String get pad {
    return toString().padLeft(2, '0');
  }

  String get duration {
    if (this <= 30) {
      return '$this Days';
    }
    if (this < 365) {
      return '${this ~/ 30} Months';
    }
    return '${this ~/ 356} Year';
  }
}
