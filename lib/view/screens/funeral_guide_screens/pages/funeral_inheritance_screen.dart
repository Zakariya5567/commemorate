
import 'package:commemorate/provider/funeral_guide_provider.dart';
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/checkbox_with_text.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/funeral_guide_constant.dart';
import 'package:commemorate/view/widgets/custom_button.dart';
import 'package:commemorate/view/widgets/custom_text_field.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/string_extension.dart';
import 'package:commemorate/view/widgets/extention/tooltip_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FuneralInheritanceScreen extends StatefulWidget {
  const FuneralInheritanceScreen({super.key});

  @override
  State<FuneralInheritanceScreen> createState() => _FuneralInheritanceScreenState();
}

class _FuneralInheritanceScreenState extends State<FuneralInheritanceScreen> {

  ScrollController? scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController!.addListener(swapPageListener);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FuneralGuideProvider>(
      builder: (context, controller, child) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              25.height,
              FuneralGuideConstant.inheritanceTitle.toText(color: AppColors.brownPrimary, fontSize: 22, fontWeight: FontWeight.w700, maxLine: 3 ),
              15.height,
              FuneralGuideConstant.inheritanceDescription.toText(maxLine: 3, fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.greySecondary, textAlign: TextAlign.justify),
              const Divider().paddingSymmetric(vertical: 2.h),
              CheckboxWithText(title: FuneralGuideConstant.checkList, trailingIcon: AppIcons.iconCheckboxUncheck,),
              const Divider().paddingSymmetric(vertical: 2.h),
              CheckboxWithText(title: FuneralGuideConstant.confirmTheDeceasedAsset, trailingIcon: AppIcons.iconCheckbox,),
              const Divider().paddingSymmetric(vertical: 2.h),
              CheckboxWithText(title: FuneralGuideConstant.theNationPension, trailingIcon: AppIcons.iconCheckbox,),
              const Divider().paddingSymmetric(vertical: 2.h),
              CheckboxWithText(title: FuneralGuideConstant.transferOfPension, trailingIcon: AppIcons.iconCheckbox,),
              const Divider().paddingSymmetric(vertical: 2.h),
              CheckboxWithText(title: FuneralGuideConstant.cancelTelecommunication, trailingIcon: AppIcons.iconCheckbox,),
              const Divider().paddingSymmetric(vertical: 2.h),
              CheckboxWithText(title: FuneralGuideConstant.deathInFuneral, trailingIcon: AppIcons.iconCheckbox,),
              const Divider().paddingSymmetric(vertical: 2.h),
              CheckboxWithText(title: FuneralGuideConstant.funeralReservation, trailingIcon: AppIcons.iconCheckbox,),
              const Divider().paddingSymmetric(vertical: 2.h),
              CheckboxWithText(title: FuneralGuideConstant.insuranceCopies, trailingIcon: AppIcons.iconCheckboxUncheck,),
              10.height,
              FuneralGuideConstant.cancelledFuneral.toText(maxLine: 3, fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.blueSecondary, textAlign: TextAlign.justify, isUnderLine: true),
              10.height,
              Row(
                children: [
                  FuneralGuideConstant.insuranceIfPossible.toText(maxLine: 3, fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.blueSecondary, textAlign: TextAlign.justify, isUnderLine: true),
                  SvgPicture.asset(AppIcons.iconInfo).tooltip("장제급여 수급을 위해 필요").paddingSymmetric(horizontal: 20.w),
                ],
              ),
              const Divider().paddingSymmetric(vertical: 2.h),
              CheckboxWithText(title: FuneralGuideConstant.deathReport, trailingIcon: AppIcons.iconCheckbox, showInfoIcon: true, infoIconToolTipText: " 잠깐!  간혹 장례 절차가 진행 중에 사망신고를 하는 상주님이 계십니다. 사망신고가 접수되면 고인의 주민등록이 말소되기 때문에 화장장에서 접수를 거부 당할 수 있으며 은행 계좌 해지 및 보험 관련해서도 어려움이 발생할 수 있습니다. 가급적 위의 모든 절차가 끝난 후 사망신고를 해 주세요.",),
              10.height,
              const Divider().paddingSymmetric(vertical: 2.h),
              CheckboxWithText(title: FuneralGuideConstant.placesThatProviderCosmetics, trailingIcon: AppIcons.iconCheckboxUncheck,),
              10.height,
              Row(
                children: [
                  FuneralGuideConstant.welfareHomepage.toText(maxLine: 3, fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.blueSecondary, textAlign: TextAlign.justify, isUnderLine: true),
                  SvgPicture.asset(AppIcons.iconInfo).tooltip("장제급여 수급을 위해 필요").paddingSymmetric(horizontal: 20.w),
                ],
              ),
              10.height,
              PrimaryButton(
                buttonName: FuneralGuideConstant.btnSaveCheckList,
                onPressed: () { },
                buttonColor: AppColors.bluePrimary,
                height: 45.h,
                width: 125.w,
                textSize: 14,
                radius: 5,
              ).align(Alignment.centerRight),
              20.height,
            ],
          ).paddingSymmetric(horizontal: 22.w),
        );
      },
    );
  }

  void swapPageListener() {
    final provider= Provider.of<FuneralGuideProvider>(context, listen: false);
    if (scrollController!.offset > scrollController!.position.maxScrollExtent + 170) {
       provider.pageController.jumpToPage(provider.activePageValue+1);
       debugPrint("page Value ${provider.activePageValue}");
    }

    if (scrollController!.offset < scrollController!.position.minScrollExtent - 170) {
      provider.pageController.jumpToPage(provider.activePageValue-1);
      debugPrint("page Value ${provider.activePageValue}");
    }
  }

}
