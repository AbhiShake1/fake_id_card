class StringUtils {
  const StringUtils._();

  static bool isValidEmail(String text) =>
      RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.'
              r'[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]'
              r'{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
              r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
          .hasMatch(text);

  static bool isValidPhone(String text) =>
      RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(text);

  static String toStringShort(String text) => text
      .split(' ')
      .fold('', (val, el) => '$val ${el[0]}')
      .trim()
      .toUpperCase();
}
