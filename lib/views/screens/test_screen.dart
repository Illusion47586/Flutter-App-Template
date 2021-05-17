import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/widgets/background/background.dart';
import '../controllers/test_screen_controller.dart';
import '../widgets/test_widget.dart';

class TestScreen extends StatelessWidget {
  static const String id = '/test-screen';

  final TestScreenController controller = Get.put(TestScreenController());

  @override
  Widget build(BuildContext context) {
    return Background(
      bottomPadding: false,
      title: 'Get Started !',
      child: Center(child: TestWidget()),
    );
  }
}
