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
        decoration: BoxDecoration(
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
                  fontFamily: AppStyle.gothamRegular,
                  fontWeight: FontWeight.w600),
              unselectedLabelStyle: const TextStyle(
                  fontFamily: AppStyle.gothamRegular,
                  fontWeight: FontWeight.w400),
              selectedItemColor: AppColors.greenPrimary,
              unselectedItemColor: AppColors.greyPrimary,
              backgroundColor: Colors.transparent,
              elevation: 0,
              currentIndex: controller.currentIndex,
              onTap: (index) {
                // set the current index of the bottom navigation bar
                // the function is declared inside BottomNavigationProvider
                deBouncer.run(() {
                  controller.setCurrentIndex(index);
                  if (widget.currentIndex != index) {
                    switch (index) {
                      case 0:
                        controller.setCurrentIndex(0);
                        break;
                      case 1:
                        controller.setCurrentIndex(1);
                        break;
                      default:
                        break;
                    }
                  }
                });
              },
              items: <BottomNavigationBarItem>[
                // Home
                BottomNavigationBarItem(
                    icon: svgAssetImage(
                      controller.currentIndex == 0
                          ? AppIcons.iconSuccess
                          : AppIcons.iconSuccess,
                      height: 24.h,
                      width: 24.h,
                    ).paddingOnly(bottom: 5.h, top: 5.h),
                    label: AppConstant.signInText),
                // Customers
                BottomNavigationBarItem(
                    icon: svgAssetImage(
                      controller.currentIndex == 1
                          ? AppIcons.iconSuccess
                          : AppIcons.iconSuccess,
                      height: 24.h,
                      width: 24.h,
                    ).paddingOnly(bottom: 5.h, top: 5.h),
                    label: AppConstant.signInText),
              ]),
        ),
      );
    });
  }
}
