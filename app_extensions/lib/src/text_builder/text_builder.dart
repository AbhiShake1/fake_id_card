import 'package:flutter/material.dart';

class TextBuilder {
  TextBuilder(this._text);

  double? _scale;
  double? _fontSize;
  TextAlign? _align;
  FontWeight? _fontWeight;
  FontStyle? _fontStyle;
  TextOverflow? _overflow;
  TextBaseline? _baseline;
  Color? _color;
  double? _letterSpacing;
  String? _fontFamily;
  double? _height;
  TextStyle? _textStyleFromContext = const TextStyle();
  int? _maxLines;
  bool? _softWrap;

  TextTheme _contextTheme(BuildContext context) => Theme.of(context).textTheme;

  final String _text;

  Text make() => Text(
        _text,
        style: _textStyleFromContext?.copyWith(
          fontWeight: _fontWeight,
          color: _color,
          fontSize: _fontSize,
          fontStyle: _fontStyle,
          textBaseline: _baseline,
          letterSpacing: _letterSpacing,
          fontFamily: _fontFamily,
          height: _height,
        ),
        textScaleFactor: _scale,
        softWrap: _softWrap,
        textAlign: _align,
        overflow: _overflow,
        maxLines: _maxLines,
      );

  Widget makeCentered() => Center(child: make());

  TextBuilder maxLines(int? maxLines) {
    _maxLines = maxLines;
    return this;
  }

  TextBuilder get softWrap {
    _softWrap = true;
    return this;
  }

  TextBuilder headlineSmall(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).headlineSmall;
    return this;
  }

  TextBuilder bodyMedium(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).bodyMedium;
    return this;
  }

  TextBuilder bodySmall(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).bodySmall;
    return this;
  }

  TextBuilder bodyLarge(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).bodyLarge;
    return this;
  }

  TextBuilder displaySmall(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).displaySmall;
    return this;
  }

  TextBuilder headlineMedium(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).headlineMedium;
    return this;
  }

  TextBuilder titleMedium(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).titleMedium;
    return this;
  }

  TextBuilder titleSmall(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).titleSmall;
    return this;
  }

  TextBuilder displayMedium(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).displayMedium;
    return this;
  }

  TextBuilder displayLarge(BuildContext context) {
    _textStyleFromContext = _contextTheme(context).displayLarge;
    return this;
  }

  TextBuilder get height0 {
    _height = 0;
    return this;
  }

  TextBuilder height(double? height) {
    _height = height;
    return this;
  }

  TextBuilder letterSpacing(double spacing) {
    _letterSpacing = spacing;
    return this;
  }

  TextBuilder get ideographic {
    _baseline = TextBaseline.ideographic;
    return this;
  }

  TextBuilder get ellipsis {
    _overflow = TextOverflow.ellipsis;
    return this;
  }

  TextBuilder get clip {
    _overflow = TextOverflow.clip;
    return this;
  }

  TextBuilder get fade {
    _overflow = TextOverflow.fade;
    return this;
  }

  TextBuilder get visible {
    _overflow = TextOverflow.visible;
    return this;
  }

  TextBuilder get italic {
    _fontStyle = FontStyle.italic;
    return this;
  }

  TextBuilder get bold {
    _fontWeight = FontWeight.bold;
    return this;
  }

  TextBuilder get w400 {
    _fontWeight = FontWeight.w400;
    return this;
  }

  TextBuilder get w500 {
    _fontWeight = FontWeight.w500;
    return this;
  }

  TextBuilder get w600 {
    _fontWeight = FontWeight.w600;
    return this;
  }

  TextBuilder get w700 {
    _fontWeight = FontWeight.w700;
    return this;
  }

  TextBuilder get w800 {
    _fontWeight = FontWeight.w800;
    return this;
  }

  TextBuilder get w900 {
    _fontWeight = FontWeight.w900;
    return this;
  }

  TextBuilder fontWeight(FontWeight fontWeight) {
    _fontWeight = fontWeight;
    return this;
  }

  TextBuilder get black {
    _color = Colors.black;
    return this;
  }

  TextBuilder get white {
    _color = Colors.white;
    return this;
  }

  TextBuilder color(Color? color) {
    _color = color;
    return this;
  }

  TextBuilder fontFamily(TextStyle fontFamily) {
    _fontFamily = fontFamily.fontFamily;
    return this;
  }

  TextBuilder fontSize(double fontSize) {
    _fontSize = fontSize;
    return this;
  }

  TextBuilder scale(double scale) {
    _scale = scale;
    return this;
  }

  TextBuilder get xl2 {
    _scale = 2;
    return this;
  }

  TextBuilder get xl3 {
    _scale = 3;
    return this;
  }

  TextBuilder get xl4 {
    _scale = 4;
    return this;
  }

  TextBuilder get xl5 {
    _scale = 5;
    return this;
  }

  TextBuilder get alignCenter {
    _align = TextAlign.center;
    return this;
  }

  TextBuilder align(TextAlign align) {
    _align = align;
    return this;
  }
}
