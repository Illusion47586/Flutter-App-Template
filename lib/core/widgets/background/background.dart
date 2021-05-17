import 'package:flutter/material.dart';
import 'package:flutter_fgbg/flutter_fgbg.dart';
import '../../../utilities/status_bar_set.dart';

import '../../theme/size_config.dart';
import 'appbar.dart';

class Background extends StatelessWidget {
  final String title;
  final Widget child;
  final bool bottomPadding;

  const Background({
    Key? key,
    required this.title,
    required this.child,
    this.bottomPadding = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FGBGNotifier(
      onEvent: (value) {
        if (value == FGBGType.foreground) {
          SizeConfig.init();
          statusBarSet();
        }
      },
      child: Scaffold(
        appBar: CustomAppBar(title: title),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              SizeConfig.defaultSize * 3,
              0,
              SizeConfig.defaultSize * 3,
              bottomPadding ? SizeConfig.defaultSize * 3 : 0,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
