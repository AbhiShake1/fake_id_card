import 'package:app_extensions/src/num_extensions.dart';

/// {@template duration_extensions}
/// duration shorthands
/// {@endtemplate}
extension DurationX on int {
  /// {@template seconds}
  /// convert x number to x second duration
  /// {@endtemplate}
  Duration get seconds => Duration(seconds: this);

  /// {@template milliSeconds}
  /// convert x number to x millisecond duration
  /// {@endtemplate}
  Duration get milliSeconds => Duration(milliseconds: this);

  /// {@template microSeconds}
  /// convert x number to x microsecond duration
  /// {@endtemplate}
  Duration get microSeconds => Duration(microseconds: this);

  /// {@template minutes}
  /// convert x number to x minute duration
  /// {@endtemplate}
  Duration get minutes => Duration(minutes: this);
}

extension DurationUtilX on Duration {
  String get minAndSeconds => '${inMinutes.pad}.'
      '${inSeconds.remainder(60).pad}';
}
