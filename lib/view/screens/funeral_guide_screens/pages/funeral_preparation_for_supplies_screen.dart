
import 'package:commemorate/provider/funeral_guide_provider.dart';
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/utils/constant.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/funeral_guide_constant.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/tick_with_text.dart';
import 'package:commemorate/view/widgets/custom_button.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/string_extension.dart';
import 'package:commemorate/view/widgets/extention/tooltip_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FuneralPreparationForSuppliesScreen extends StatelessWidget {
  const FuneralPreparationForSuppliesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FuneralGuideProvider>(builder: (context, controller, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.height,
          FuneralGuideConstant.prepareForFuneral.toText(color: AppColors.brownPrimary, fontSize: 22, fontWeight: FontWeight.w700, maxLine: 3 ),
          20.height,
          TickWithText(title: FuneralGuideConstant.funeralForHome,),
          20.height,
          TickWithText(title: FuneralGuideConstant.contactForRequried,),
          20.height,
          TickWithText(title: FuneralGuideConstant.purchasingItems,),
          20.height,
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.greyQuaternary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                topLeft: Radius.circular(5)
              )
            ),
            child: Row(
              children: [
                SizedBox(width: 110.w, child: FuneralGuideConstant.item.toText(maxLine: 3, fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.greySecondary, textAlign: TextAlign.justify)),
                SizedBox(width: 125.w, child: FuneralGuideConstant.lowestPrice.toText(maxLine: 3, fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.greySecondary, textAlign: TextAlign.justify).align(Alignment.centerRight)),
                SizedBox(width: 85.w, child: FuneralGuideConstant.internetPrice.toText(maxLine: 3, fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.greySecondary, textAlign: TextAlign.justify).align(Alignment.centerRight)).expanded,
              ],
            ).paddingAll(10),
          ),
          10.height,
          ListView.separated(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.funeralPreparationList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  SizedBox(width: 110.w, child: Row(
                    children: [
                      SvgPicture.asset(AppIcons.iconCheckbox),
                      10.width,
                      controller.funeralPreparationList[index]['item'].toString().toText(maxLine: 3, fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.greySecondary, textAlign: TextAlign.justify),
                    ],
                  )),
                  SizedBox(width: 125.w, child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AppIcons.iconInfo).tooltip("시신에게 입히는 옷"),
                      controller.funeralPreparationList[index]['lowest_price'].toString().toText(maxLine: 3, fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.greySecondary, textAlign: TextAlign.justify),
                    ],
                  )),
                  SizedBox(width: 80.w, child: controller.funeralPreparationList[index]['internet_price'].toString().toText(maxLine: 3, fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.blueSecondary, textAlign: TextAlign.justify).align(Alignment.centerRight)).expanded,
                ],
              ).paddingSymmetric(vertical: 10.h);
            },
            separatorBuilder: (context, index) {
              return 12.height;
            },
          ).paddingSymmetric(horizontal: 15.w),
          const Divider(),
          Row(
            children: [
              SizedBox(width: 115.w, child: FuneralGuideConstant.total.toText(maxLine: 3, fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.greySecondary, textAlign: TextAlign.justify)),
              SizedBox(width: 105.w, child: "1,615,773".toText(maxLine: 3, fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.greySecondary, textAlign: TextAlign.justify).align(Alignment.centerRight)),
              SizedBox(width: 85.w, child: "576,000".toText(maxLine: 3, fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.greySecondary, textAlign: TextAlign.justify).align(Alignment.centerRight)),
            ],
          ).paddingSymmetric(horizontal: 20.w, vertical: 10.h),
          Row(
            children: [
              SizedBox(width: 115.w, child: FuneralGuideConstant.prepareInAdvance.toText(maxLine: 3, fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.blueSecondary, textAlign: TextAlign.justify)),
              SizedBox(width: 105.w, child: "1,039,773".toText(maxLine: 3, fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.blueSecondary, textAlign: TextAlign.justify).align(Alignment.centerRight)),
              SizedBox(width: 85.w, child: FuneralGuideConstant.possibleSaving.toText(maxLine: 3, fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.blueSecondary, textAlign: TextAlign.justify).align(Alignment.centerRight)),
            ],
          ).paddingSymmetric(horizontal: 20.w, vertical: 10.h),
          const Divider(),
          PrimaryButton(
            buttonName: FuneralGuideConstant.btnFuneralSupplies,
            onPressed: () { },
            buttonColor: AppColors.bluePrimary,
            height: 45.h,
            textSize: 14,
            radius: 5,
          ),
        ],
      ).paddingSymmetric(horizontal: 22.w);
    });

  }
}
