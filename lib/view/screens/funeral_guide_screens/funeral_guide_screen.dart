import 'package:commemorate/provider/funeral_guide_provider.dart';
import 'package:commemorate/utils/dimension.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../../provider/authentication_provider.dart';
import '../../../utils/colors.dart';

class FuneralGuideScreen extends StatelessWidget {
  const FuneralGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FuneralGuideProvider>(builder: (context, controller, child) {
      return Scaffold(
        body: SizedBox(
          height: 844.h,
          width: double.infinity,
          child: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: controller.funeralPages.length,
            controller: controller.pageController,
            onPageChanged: (value) {
              controller.activePageValue = value;
            },
            itemBuilder: (context, index) {
              return controller.funeralPages[index];
            },
          )
        )
      );
    });
  }
}
