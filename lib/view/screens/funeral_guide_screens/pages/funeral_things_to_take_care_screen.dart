
import 'package:commemorate/provider/funeral_guide_provider.dart';
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/checkbox_with_text.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/funeral_guide_constant.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/tick_with_text.dart';
import 'package:commemorate/view/widgets/custom_button.dart';
import 'package:commemorate/view/widgets/custom_text_field.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/string_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FuneralThingsToTakeCareScreen extends StatefulWidget {
  const FuneralThingsToTakeCareScreen({super.key});

  @override
  State<FuneralThingsToTakeCareScreen> createState() => _FuneralThingsToTakeCareScreenState();
}

class _FuneralThingsToTakeCareScreenState extends State<FuneralThingsToTakeCareScreen> {

  @override
  void initState() {
    final provider = Provider.of<FuneralGuideProvider>(context, listen: false);
    provider.isBringExpanded = false;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FuneralGuideProvider>(
      builder: (context, controller, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: -85.h,
              child: Image.asset(AppImages.imgDownFlowerPng).center
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                25.height,
                FuneralGuideConstant.thingToTakeCareTitle.toText(color: AppColors.brownPrimary, fontSize: 22, fontWeight: FontWeight.w700, maxLine: 3 ),
                const Divider().paddingSymmetric(vertical: 10.h),
                CheckboxWithText(title: FuneralGuideConstant.checkList, trailingIcon: AppIcons.iconCheckboxUncheck,),
                const Divider().paddingSymmetric(vertical: 10.h),
                CheckboxWithText(title: FuneralGuideConstant.hospitalPhoneNumber, trailingIcon: AppIcons.iconCheckbox,),
                20.height,
                CheckboxWithText(title: FuneralGuideConstant.bringTheDeceasedId, trailingIcon: AppIcons.iconCheckbox,),
                20.height,
                CheckboxWithText(title: FuneralGuideConstant.deceasedPhoneNumber, trailingIcon: AppIcons.iconCheckbox,),
                20.height,
                CheckboxWithText(title: FuneralGuideConstant.deathOccursOutside, trailingIcon: AppIcons.iconCheckbox,),
                20.height,
                CheckboxWithText(title: FuneralGuideConstant.inCaseOfAccident, trailingIcon: AppIcons.iconCheckbox,),
                20.height,
                CheckboxWithText(title: FuneralGuideConstant.funeralReservation, trailingIcon: AppIcons.iconCheckbox,),
                20.height,
                CheckboxWithText(title: FuneralGuideConstant.insuranceCopies, trailingIcon: AppIcons.iconCheckboxUncheck, showInfoIcon: true, infoIconToolTipText: "사망진단서 : 사망시에 사망자를 진찰한 의사가 작성한 사망사실 증명 문서\n\n사체검안서 : 사망 후에 사체를 검안한 의사가 작성한 사망사실 증명 문서\n\n보험 등 금융상품 가입 내역이 많을 경우 이보다 더 많이 필요하니 충분히 발급 받으시는 것을 권해 드립니다.",),
                20.height,
                CustomTextField(
                  controller: controller.makeUpController,
                  hintText: FuneralGuideConstant.hintBringCopies,
                  borderColor: AppColors.greyTextFieldBorder,
                  radius: 5,
                  suffixIcon: Image.asset(controller.isBringExpanded ? AppIcons.iconArrowUpPng : AppIcons.iconArrowDownPng).onPress(() {controller.changeBringCopiesExpandedValue();}),
                ),
                controller.isBringExpanded
                  ? Container(
                    color: AppColors.greyQuaternary,
                    child: Column(
                        children: [
                          CheckboxWithText(title: FuneralGuideConstant.certificateOfVeteran, trailingIcon: AppIcons.iconCheckboxUncheck,),
                          20.height,
                          CheckboxWithText(title: FuneralGuideConstant.basicLivelihood, trailingIcon: AppIcons.iconCheckboxUncheck,),
                        ],
                     ).paddingAll(15.h),
                  )
                  : Container()
              ],
            ).paddingSymmetric(horizontal: 22.w),
          ],
        );
      },
    );
  }
}
