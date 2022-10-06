import 'package:flutter/material.dart';

extension SnackBarX on BuildContext {
  void showSnackBar({required String content, Color? backgroundColor}) =>
      ScaffoldMessenger.maybeOf(this)
        ?..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(content),
            backgroundColor: backgroundColor,
          ),
        );

  void showErrorSnackBar(String msg) =>
      showSnackBar(content: msg, backgroundColor: Colors.red);

  // void showLoading({String? title}) => showDialog<Widget>(
  //       context: this,
  //       builder: (context) => Center(
  //         child: AppLoadingDialog(title: title),
  //       ),
  //       barrierDismissible: false,
  //     );

  // void viewPhoto({
  //   required BuildContext context,
  //   required ImageProvider imageProvider,
  // }) {
  //   showDialog<dynamic>(
  //     context: this,
  //     builder: (context) => PhotoViewWidget(imageProvider: imageProvider),
  //   );
  // }
}
