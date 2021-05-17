import 'package:get/get_navigation/get_navigation.dart';

import '../../views/screens/test_screen.dart';

class RouteHandler {
  // ! set this up
  static String initialRoute = TestScreen.id;

  // static const String initialRoute = TestScreen.id;

  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: TestScreen.id,
      page: () => TestScreen(),
    ),
  ];
}
