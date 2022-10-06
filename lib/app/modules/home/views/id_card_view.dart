import 'dart:io';

import 'package:app_extensions/app_extensions.dart';
import 'package:fake_id_card/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide WidgetPaddingX;
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screenshot/screenshot.dart';

class IdCardView extends GetView<HomeController> {
  const IdCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IdCardView'),
        centerTitle: true,
      ),
      body: Screenshot(
        controller: controller.idScreenshotController,
        child: const ColoredBox(
          color: Colors.white,
          child: _CardWidget(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: PhysicalModel(
        color: Colors.grey,
        elevation: 5,
        borderRadius: BorderRadius.circular(50),
        child: FloatingActionButton.large(
          onPressed: controller.screenshotCard,
          backgroundColor: Colors.green,
          child: const Icon(Icons.save),
        ),
      ),
    );
  }
}

class _CardWidget extends GetView<HomeController> {
  const _CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.heightBox,
        ...[
          SizedBox(
            width: 200,
            height: 200,
            child: controller.schoolLogo.value == null
                ? FlutterLogo(
                    size: Get.width / 3,
                  )
                : Image.file(File(controller.schoolLogo.value!)),
          ),
          controller.schoolNameController.text.text.bold.xl2.alignCenter
              .make()
              .paddingY(4),
          controller.schoolLocationController.text.text
              .scale(1.5)
              .w500
              .alignCenter
              .make(),
          controller.schoolMailController.text.text.scale(1.2).make(),
        ].map((e) => e.paddingX(Get.width / 5)),
        const Spacer(),
        Stack(
          alignment: FractionalOffset.center,
          children: [
            ClipPath(
              clipper: const _CustomPentagon(),
              child: Container(
                height: Get.height / 2.5,
                width: double.infinity,
                color: const Color.fromRGBO(7, 86, 238, 1),
              ),
            ),
            Column(
              children: [
                if (controller.studentPhoto.value != null)
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.file(
                      File(controller.studentPhoto.value!),
                    ),
                  ),
                30.heightBox,
                controller.studentNameController.text
                    .toUpperCase()
                    .text
                    .scale(1.5)
                    .bold
                    .white
                    .make(),
                '(${controller.studentIdController.text})'
                    .toUpperCase()
                    .text
                    .scale(1.5)
                    .white
                    .make(),
                15.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        'Gender: ${controller.studentGenderController.text}'
                            .text
                            .white
                            .scale(1.2)
                            .bold
                            .make(),
                        4.heightBox,
                        'Class: ${controller.studentClassController.text}'
                            .text
                            .white
                            .scale(1.2)
                            .bold
                            .make(),
                        4.heightBox,
                        'DOB: ${controller.studentDobController.text}'
                            .text
                            .white
                            .scale(1.2)
                            .bold
                            .make(),
                        4.heightBox,
                        'Contact: ${controller.studentContactController.text}'
                            .text
                            .white
                            .scale(1.2)
                            .bold
                            .make(),
                      ],
                    ),
                    QrImage(
                      data: controller.studentIdController.text,
                      size: Get.width / 3,
                      foregroundColor: Colors.white,
                      version: 5,
                    ),
                  ],
                ).paddingX(8),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _CustomPentagon extends CustomClipper<Path> {
  const _CustomPentagon();

  @override
  Path getClip(Size size) => Path()
    ..addPolygon([
      Offset(0, size.height / 4),
      Offset(size.width, 0),
      Offset(size.width, size.height),
      Offset(0, size.height),
      Offset(0, size.width),
    ], true);

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
