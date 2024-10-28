import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/constant.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../helper/debouncer.dart';
import '../../provider/bottom_navigation_provider.dart';
import '../../utils/colors.dart';
import '../../utils/style.dart';
import 'extention/svg_image.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final DeBouncer deBouncer = DeBouncer(milliseconds: 500);
  @override
  void initState() {
    deBouncer.dispose();
    super.initState();
  }

  // Bottom navigation the the bottom navigation bar of the app
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationProvider>(
        builder: (context, controller, child) {
      return Container(
        decoration: const BoxDecoration(
            color: AppColors.whitePrimary,
            border: Border(
                top: BorderSide(
              width: 0.5,
              color: AppColors.greyPrimary,
            ))),
        child: Material(
          elevation: .0,
          color: AppColors.whitePrimary,
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              unselectedFontSize: 10.h,
              selectedFontSize: 10.h,
              selectedLabelStyle: const TextStyle(
                  fontFamily: AppStyle.pretendardSemiBold,
                  color: AppColors.brownPrimary,
                  fontWeight: FontWeight.w600),
              unselectedLabelStyle: const TextStyle(
                  fontFamily: AppStyle.pretendardSemiBold,
                  color: AppColors.whitePrimary,
                  fontWeight: FontWeight.w400),
              selectedItemColor: AppColors.brownPrimary,
              unselectedItemColor: AppColors.whitePrimary,
              backgroundColor: AppColors.greyPrimary,
              elevation: 0,
              currentIndex: controller.currentIndex,
              onTap: (index) {
                // set the current index of the bottom navigation bar
                // the function is declared inside BottomNavigationProvider
                // deBouncer.run(() {
                controller.setCurrentIndex(index);
                if (widget.currentIndex != index) {
                  switch (index) {
                    case 0:
                      controller.setCurrentIndex(0);
                      break;
                    case 1:
                      controller.setCurrentIndex(1);
                      break;
                    case 2:
                      controller.setCurrentIndex(2);
                      break;
                    case 3:
                      controller.setCurrentIndex(3);
                      break;
                    case 4:
                      controller.setCurrentIndex(4);
                      break;
                    default:
                      break;
                  }
                }
                //  });
              },
              items: <BottomNavigationBarItem>[
                // Funeral Guide
                BottomNavigationBarItem(
                    icon: svgAssetImage(
                      controller.currentIndex == 0
                          ? AppIcons.iconListFill
                          : AppIcons.iconList,
                      height: 24.h,
                      width: 24.h,
                    ).paddingOnly(bottom: 5.h, top: 5.h),
                    label: AppConstant.funeralGuide),
                // Preparation List
                BottomNavigationBarItem(
                    icon: svgAssetImage(
                      controller.currentIndex == 1
                          ? AppIcons.iconBookmarkFill
                          : AppIcons.iconBookmark,
                      height: 24.h,
                      width: 24.h,
                    ).paddingOnly(bottom: 5.h, top: 5.h),
                    label: AppConstant.preparationList),

                // Obituary
                BottomNavigationBarItem(
                    icon: svgAssetImage(
                      controller.currentIndex == 2
                          ? AppIcons.iconInboxFill
                          : AppIcons.iconInbox,
                      height: 24.h,
                      width: 24.h,
                    ).paddingOnly(bottom: 5.h, top: 5.h),
                    label: AppConstant.obituary),

                // Thank you
                BottomNavigationBarItem(
                    icon: svgAssetImage(
                      controller.currentIndex == 3
                          ? AppIcons.iconChatFill
                          : AppIcons.iconChat,
                      height: 24.h,
                      width: 24.h,
                    ).paddingOnly(bottom: 5.h, top: 5.h),
                    label: AppConstant.thankYou),

                // New Journey
                BottomNavigationBarItem(
                    icon: svgAssetImage(
                      controller.currentIndex == 4
                          ? AppIcons.iconJourneyFill
                          : AppIcons.iconJourney,
                      height: 24.h,
                      width: 24.h,
                    ).paddingOnly(bottom: 5.h, top: 5.h),
                    label: AppConstant.newJourney),
              ]),
        ),
      );
    });
  }
}
