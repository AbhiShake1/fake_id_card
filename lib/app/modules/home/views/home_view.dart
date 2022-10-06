import 'dart:io';

import 'package:app_extensions/app_extensions.dart';
import 'package:fake_id_card/app/modules/home/views/id_card_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart' hide WidgetPaddingX;

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fill the form up'),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed: () => Get.to(const IdCardView())
            ?.whenComplete(FocusScope.of(context).unfocus),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: 'Generate'.text.bold.make().paddingAll(8),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          12.heightBox,
          'School Name'.text.bold.make(),
          TextFormField(
            controller: controller.schoolNameController,
          ).paddingY(4),
          'School Address'.text.bold.make(),
          TextFormField(
            controller: controller.schoolLocationController,
          ).paddingY(4),
          'School Mail'.text.bold.make(),
          TextFormField(
            controller: controller.schoolMailController,
          ).paddingY(4),
          'Student name'.text.bold.make(),
          TextFormField(
            controller: controller.studentNameController,
          ).paddingY(4),
          'Student ID'.text.bold.make(),
          TextFormField(
            controller: controller.studentIdController,
          ).paddingY(4),
          'Student Class'.text.bold.make(),
          TextFormField(
            controller: controller.studentClassController,
          ).paddingY(4),
          'Student Contact No.'.text.bold.make(),
          TextFormField(
            controller: controller.studentContactController,
          ).paddingY(4),
          'Student Gender'.text.bold.make(),
          TextFormField(
            controller: controller.studentGenderController,
            decoration: const InputDecoration(
              hintText: 'Male / Female',
            ),
          ).paddingY(4),
          'Student Date of Birth'.text.bold.make(),
          TextFormField(
            controller: controller.studentDobController,
            decoration: const InputDecoration(
              hintText: 'YYYY-MM-DD',
            ),
          ).paddingY(4),
          'Student Photo'.text.bold.make(),
          Row(
            children: [
              Obx(
                () => Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                    image: controller.studentPhoto.value == null
                        ? null
                        : DecorationImage(
                            image: FileImage(
                              File(controller.studentPhoto.value!),
                            ),
                          ),
                  ),
                  child: controller.studentPhoto.value != null
                      ? null
                      : const Icon(Icons.add_a_photo),
                ),
              ).onClick(controller.pickStudentPhoto),
            ],
          ).paddingY(4),
          'School Logo'.text.bold.make(),
          Row(
            children: [
              Obx(
                () => Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                    image: controller.schoolLogo.value == null
                        ? null
                        : DecorationImage(
                            image: FileImage(
                              File(controller.schoolLogo.value!),
                            ),
                          ),
                  ),
                  child: controller.schoolLogo.value != null
                      ? null
                      : const Icon(Icons.add_a_photo),
                ),
              ).onClick(controller.pickSchoolLogo),
            ],
          ).paddingY(4),
          20.heightBox,
        ],
      ).paddingX(8),
    );
  }
}
