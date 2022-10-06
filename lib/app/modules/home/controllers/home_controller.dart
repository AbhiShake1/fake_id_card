import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class HomeController extends GetxController {
  late final TextEditingController schoolNameController,
      schoolLocationController,
      schoolMailController,
      studentNameController,
      studentIdController,
      studentContactController,
      studentClassController,
      studentGenderController,
      studentDobController;

  late final RxnString studentPhoto, schoolLogo;

  final ScreenshotController idScreenshotController = ScreenshotController();

  final cardKey = GlobalKey();

  Future<void> screenshotCard() async {
    final dir = (await getTemporaryDirectory()).path;
    final path = await idScreenshotController.captureAndSave(
      '$dir/fake_id_${DateTime.now().microsecondsSinceEpoch}.png',
    );
    await Share.shareFiles([if (path != null) path]);
  }

  @override
  void onInit() {
    schoolNameController = TextEditingController();
    schoolLocationController = TextEditingController();
    schoolMailController = TextEditingController();
    studentNameController = TextEditingController();
    studentIdController = TextEditingController();
    studentClassController = TextEditingController();
    studentContactController = TextEditingController();
    studentGenderController = TextEditingController();
    studentDobController = TextEditingController();
    studentPhoto = RxnString(null);
    schoolLogo = RxnString(null);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  final _imagePicker = ImagePicker();

  Future<String?> _pickPhoto() async {
    final res = await _imagePicker.pickImage(
      source: ImageSource.gallery,
    );
    return res?.path;
  }

  Future<void> pickStudentPhoto() async {
    studentPhoto.value = await _pickPhoto();
  }

  Future<void> pickSchoolLogo() async {
    schoolLogo.value = await _pickPhoto();
  }
}
