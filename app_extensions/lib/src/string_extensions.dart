import 'package:app_extensions/src/text_builder/text_builder.dart';
import 'package:app_extensions/src/text_builder/text_span_builder.dart';
import 'package:app_extensions/src/utils/string_utils.dart';

extension StringX on String {
  TextBuilder get text => TextBuilder(this);
  TextSpanBuilder get textSpan => TextSpanBuilder(this);

  bool isEmail() => StringUtils.isValidEmail(this);

  bool isPhone() => StringUtils.isValidPhone(this);

  String get inCaps =>
      isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : '';

  String get initCap => split(' ').map((str) => str.trim().inCaps).join(' ');

  String toShortString() => StringUtils.toStringShort(this);
}
