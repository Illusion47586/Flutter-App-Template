import 'package:get/get.dart';
import '../../core/theme/size_config.dart';

class TestScreenController extends GetxController {
  @override
  void onReady() {
    SizeConfig.init();
    super.onReady();
  }
}
