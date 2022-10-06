import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextSpanBuilder {
  TextSpanBuilder(this._text);

  double? _fontSize;
  FontWeight? _fontWeight;
  FontStyle? _fontStyle;
  TextBaseline? _baseline;
  Color? _color;
  double? _letterSpacing;
  String? _fontFamily;
  double? _height;
  TextStyle? _textStyleFromContext = const TextStyle();
  GestureRecognizer? _recognizer;
  TextDecoration? _decoration;

  TextTheme _contextTheme(BuildContext context) => Theme.of(context).textTheme;

  final String _text;

  TextSpan make() => TextSpan(
        text: _text,
        style: _textStyleFromContext?.copyWith(
          fontWeight: _fontWeight,
          color: _color,
          fontSize: _fontSize,
          fontStyle: _fontStyle,
          textBaseline: _baseline,
          letterSpacing: _letterSpacing,
          fontFamily: _fontFamily,
          height: _height,
          decoration: _decoration,
        ),
        recognizer: _recognizer,
      );

  TextSpanBuilder bodyMedium(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).bodyMedium;
    return this;
  }

  TextSpanBuilder bodySmall(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).bodySmall;
    return this;
  }

  TextSpanBuilder bodyLarge(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).bodyLarge;
    return this;
  }

  TextSpanBuilder displaySmall(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).displaySmall;
    return this;
  }

  TextSpanBuilder headlineMedium(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).headlineMedium;
    return this;
  }

  TextSpanBuilder headlineSmall(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).headlineSmall;
    return this;
  }

  TextSpanBuilder titleMedium(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).titleMedium;
    return this;
  }

  TextSpanBuilder titleSmall(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).titleSmall;
    return this;
  }

  TextSpanBuilder displayMedium(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).displayMedium;
    return this;
  }

  TextSpanBuilder displayLarge(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).displayLarge;
    return this;
  }

  TextSpanBuilder get underline {
    _decoration = TextDecoration.underline;
    return this;
  }

  TextSpanBuilder get lineThrough {
    _decoration = TextDecoration.lineThrough;
    return this;
  }

  TextSpanBuilder get overline {
    _decoration = TextDecoration.overline;
    return this;
  }

  TextSpanBuilder get height0 {
    _height = 0;
    return this;
  }

  TextSpanBuilder recognizer(GestureRecognizer recognizer) {
    _recognizer = recognizer;
    return this;
  }

  TextSpanBuilder height(double? height) {
    _height = height;
    return this;
  }

  TextSpanBuilder letterSpacing(double spacing) {
    _letterSpacing = spacing;
    return this;
  }

  TextSpanBuilder get ideographic {
    _baseline = TextBaseline.ideographic;
    return this;
  }

  TextSpanBuilder get italic {
    _fontStyle = FontStyle.italic;
    return this;
  }

  TextSpanBuilder get bold {
    _fontWeight = FontWeight.bold;
    return this;
  }

  TextSpanBuilder get w400 {
    _fontWeight = FontWeight.w400;
    return this;
  }

  TextSpanBuilder get w500 {
    _fontWeight = FontWeight.w500;
    return this;
  }

  TextSpanBuilder get w600 {
    _fontWeight = FontWeight.w600;
    return this;
  }

  TextSpanBuilder get w700 {
    _fontWeight = FontWeight.w700;
    return this;
  }

  TextSpanBuilder get w800 {
    _fontWeight = FontWeight.w800;
    return this;
  }

  TextSpanBuilder get w900 {
    _fontWeight = FontWeight.w900;
    return this;
  }

  TextSpanBuilder fontWeight(FontWeight fontWeight) {
    _fontWeight = fontWeight;
    return this;
  }

  TextSpanBuilder get black {
    _color = Colors.black;
    return this;
  }

  TextSpanBuilder get white {
    _color = Colors.white;
    return this;
  }

  TextSpanBuilder color(Color? color) {
    _color = color;
    return this;
  }

  TextSpanBuilder fontFamily(TextStyle fontFamily) {
    _fontFamily = fontFamily.fontFamily;
    return this;
  }

  TextSpanBuilder fontSize(double fontSize) {
    _fontSize = fontSize;
    return this;
  }
}
