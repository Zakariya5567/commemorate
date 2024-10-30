import 'package:commemorate/provider/funeral_guide_provider.dart';
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/utils/style.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/funeral_guide_constant.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/string_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

class FuneralDrawer extends StatelessWidget {
  const FuneralDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FuneralGuideProvider>(builder: (context, controller, child) {
      return SizedBox(
        width: 250.w,
        child: SafeArea(
          child: Drawer(
            backgroundColor: AppColors.whitePrimary,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    40.height,
                    FuneralGuideConstant.funeralGuide.toText(color: AppColors.brownPrimary, fontSize: 24, fontWeight: FontWeight.w700, fontFamily: AppStyle.pretendardBold).paddingSymmetric(horizontal: 15.w),
                    30.height,
                    ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.funeralGuideTitles.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return drawerWidget(
                          "${index+1}. ${controller.funeralGuideTitles[index]}",
                          () {
                            Navigator.pop(context);
                            controller.pageController.jumpToPage(index+1);
                          }
                        );
                      },
                      separatorBuilder: (context, index) {
                        return 12.height;
                      },
                    ).paddingSymmetric(horizontal: 15.w),

                  ],
                ),
                // Positioned(
                //   bottom: 0,
                //   left: 0,
                //   child: Transform.rotate(
                //     angle: 45 * math.pi / 180,
                //     child: SvgPicture.asset(
                //       AppImages.imgSideFlower,
                //       width: 300.h,
                //       height: 150.h,
                //     ),
                //   )
                // )
              ],
            ),
          ),
        ),
      );
    });

  }

  drawerWidget(String title, GestureTapCallback onTap) {
    return SizedBox(height: 45.h, child: title.toText(color: AppColors.greySecondary, fontSize: 16, fontWeight: FontWeight.w400)).onPress(onTap);
  }

}