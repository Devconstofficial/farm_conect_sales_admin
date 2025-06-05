import 'package:easy_localization/easy_localization.dart';
import 'package:farmer_sales_admin/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';
import 'custom_button.dart';
import 'custom_textfield.dart';

Widget approveDialogue(BuildContext context, {bool isApplyDeduction = false}) {
  return Dialog(
    backgroundColor: kWhiteColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    child: SizedBox(
      width: isApplyDeduction == true ? 400 : 320,
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          spacing: 32,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(
                    kCloseIcon,
                    height: 16,
                    width: 16,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(isApplyDeduction == true) ...[
                  Text("kAmountToDeduct".tr(),style: AppStyles.blackTextStyle(),),
                  SizedBox(height: 2,),
                  CustomTextField(
                    hintText: "\$",
                    height: 36,
                    borderColor: kBorderColor3,maxLines: 6,borderRadius: 8,),
                  SizedBox(height: 16,),
                ],
                Text("kExplainYourReason".tr(),style: AppStyles.blackTextStyle(),),
                SizedBox(height: 2,),
                CustomTextField(
                  hintText: "kDeclineReasonPlaceholder".tr(),
                  height: 118,
                  borderColor: kBorderColor3,maxLines: 6,borderRadius: 8,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(title: "kCancel".tr(), onTap: (){
                  Get.back();
                },borderColor: kBorderColor2,color: kWhiteColor,height: 40,width: 79,textSize: 14,fontWeight: FontWeight.w600,textColor: kDarkBlueColor,),
                CustomButton(title: isApplyDeduction == true ? "kConfirmDeduction".tr() : "kConfirm".tr(), onTap: (){
                  Get.back();
                },height: 40,width: isApplyDeduction == true ? 163 : 86,textSize: 14,fontWeight: FontWeight.w600,),
              ],
            )
          ],
        ),
      ),
    ),
  );
}