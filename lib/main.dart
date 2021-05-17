import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:device_preview/device_preview.dart';

import 'core/base/logger.dart';
import 'core/route/router.dart';
import 'core/services/service_initializer.dart';
import 'core/theme/theme.dart';
import 'utilities/status_bar_set.dart';
import 'utilities/main_functions.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    statusBarSet();
    initConfig();
  } catch (e) {
    getLogger('MAIN').e(e);
  }

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 2340),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'APP NAME',
        initialBinding: InitialBinding(),
        theme: ThemeHandler.defaultTheme,
        defaultTransition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 300),
        initialRoute: RouteHandler.initialRoute,
        getPages: RouteHandler.routes,
        builder: (context, child) {
          return DevicePreview.appBuilder(
            context,
            MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 0.9),
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: child!,
              ),
            ),
          );
        },
        enableLog: true,
        logWriterCallback: localLogWriter,
      ),
    );
  }
}

void localLogWriter(String text, {bool isError = false}) {
  final Logger logger = getLogger('Root Logger');
  if (isError)
    logger.e(text);
  else
    logger.v(text);
}
