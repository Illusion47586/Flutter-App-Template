import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../route/router.dart';
import '../../theme/colors.dart';
import '../../theme/size_config.dart';
import '../../theme/typography.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  CustomAppBar({
    required this.title,
    Key? key,
  })  : preferredSize = Size(
          SizeConfig.screenWidth,
          380.h,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: BrandColors.backgroundColor,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          SizeConfig.defaultSize * 2.25,
          SizeConfig.defaultSize * 4.5,
          SizeConfig.defaultSize * 2.25,
          0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Get.currentRoute == RouteHandler.initialRoute
                        ? Icons.menu
                        : Icons.arrow_back_ios,
                  ),
                  iconSize: SizeConfig.defaultSize * 4,
                  padding: EdgeInsets.all(SizeConfig.defaultSize * 0.5),
                  onPressed: () {
                    debugPrint('hello');
                  },
                ),
                SizedBox(
                  height: SizeConfig.defaultSize,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: SizeConfig.defaultSize * 0.75,
                    ),
                    AutoSizeText(
                      title,
                      style: BrandTextStyle.header,
                      maxLines: 1,
                    ),
                  ],
                ),
              ],
            ),
            if (Get.currentRoute == RouteHandler.initialRoute)
              IconButton(
                icon: Icon(Icons.money),
                iconSize: SizeConfig.defaultSize * 4,
                padding: EdgeInsets.all(SizeConfig.defaultSize * 0.5),
                onPressed: () {
                  debugPrint('hello');
                },
              ),
          ],
        ),
      ),
    );
  }
}
