import 'package:easy_localization/easy_localization.dart';
import 'package:farmer_sales_admin/custom_widgets/custom_textfield.dart';
import 'package:farmer_sales_admin/custom_widgets/show_detail_dialog.dart';
import 'package:farmer_sales_admin/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_styles.dart';
import '../../custom_widgets/approve_dialoge.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/dashboard_container.dart';
import '../../custom_widgets/detail_row.dart';
import '../sidemenu/sidemenu.dart';
import 'controller/user_controller.dart';

class UserScreen extends GetView<UserController> {
  const UserScreen({super.key});

  Widget detailsDialogue(BuildContext context) {
    return Dialog(
      backgroundColor: kWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
        width: 693,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Obx(() => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 46,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: kGreyShade5Color,
                              width: 0.4
                          )
                      )
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          controller.selectedTab.value = "kRevenueGenerated".tr();
                        },
                        child: Text(
                          "kRevenueGenerated".tr(),
                          style: AppStyles.blackTextStyle()
                              .copyWith(
                              fontSize: 14,
                              fontWeight: controller.selectedTab.value == "kRevenueGenerated".tr() ? FontWeight.w700 : FontWeight.w400,
                              color: controller.selectedTab.value == "kRevenueGenerated".tr() ? kBlackColor : kDarkBlueColor
                          ),
                        ),
                      ),
                      SizedBox(width: 27.w,),
                      GestureDetector(
                        onTap: (){
                          controller.selectedTab.value = "kComplianceDetail".tr();
                        },
                        child: Text(
                          "kComplianceDetail".tr(),
                          style: AppStyles.blackTextStyle()
                              .copyWith(
                              fontSize: 14,
                              fontWeight: controller.selectedTab.value == "kComplianceDetail".tr() ? FontWeight.w700 : FontWeight.w400,
                              color: controller.selectedTab.value == "kComplianceDetail".tr() ? kBlackColor : kDarkBlueColor
                          ),
                        ),
                      ),
                      SizedBox(width: 27.w,),
                      GestureDetector(
                        onTap: (){
                          controller.selectedTab.value = "kReviews".tr();
                        },
                        child: Text(
                          "kReviews".tr(),
                          style: AppStyles.blackTextStyle()
                              .copyWith(
                              fontSize: 14,
                              fontWeight: controller.selectedTab.value == "kReviews".tr() ? FontWeight.w700 : FontWeight.w400,
                              color: controller.selectedTab.value == "kReviews".tr() ? kBlackColor : kDarkBlueColor
                          ),
                        ),
                      ),
                      SizedBox(width: 27.w,),
                      GestureDetector(
                        onTap: (){
                          controller.selectedTab.value = "kRevenueDetails".tr();
                        },
                        child: Text(
                          "kRevenueDetails".tr(),
                          style: AppStyles.blackTextStyle()
                              .copyWith(
                              fontSize: 14,
                              fontWeight: controller.selectedTab.value == "kRevenueDetails".tr() ? FontWeight.w700 : FontWeight.w400,
                              color: controller.selectedTab.value == "kRevenueDetails".tr() ? kBlackColor : kDarkBlueColor
                          ),
                        ),
                      ),
                      Spacer(),
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
                  )
              ),
              if(controller.selectedTab.value == "kRevenueGenerated".tr())
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DetailRowWidget(title: "kOrderIdRevenueGenerated".tr(), detail: "4548 | \$65"),
                          InkWell(
                            onTap: (){
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return showDetailDialogue(context);
                                },
                              );
                            },
                              child: Text("kDetails".tr(),style: AppStyles.whiteTextStyle().copyWith(color: kPrimaryColor,fontSize: 12,fontWeight: FontWeight.w400),))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DetailRowWidget(title: kOrderIdRevenueGenerated, detail: "4548 | \$65"),
                          InkWell(
                              onTap: (){
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return showDetailDialogue(context);
                                  },
                                );
                              },
                              child: Text("kDetails".tr(),style: AppStyles.whiteTextStyle().copyWith(color: kPrimaryColor,fontSize: 12,fontWeight: FontWeight.w400),))
                        ],
                      ),
                    ],
                  ),
                ),
              if(controller.selectedTab.value == "kComplianceDetail".tr())
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailRowWidget(title: "kAccountVerificationStatus".tr(), detail: "Confirmed"),
                      DetailRowWidget(title: "kCompletedOrder".tr(), detail: "44"),
                      DetailRowWidget(title: "kMissedOrder".tr(), detail: "2"),
                      DetailRowWidget(title: "kTotalPreviousWithdrawals".tr(), detail: "44"),
                      DetailRowWidget(title: "kPreviousPaymentIssues".tr(), detail: "No"),
                    ],
                  ),
                ),
              if(controller.selectedTab.value == "kReviews".tr())
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.builder(
                        padding: EdgeInsets.all(0),
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 44,
                                      width: 44,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(100),
                                          child: Image.asset(kAvatar2,fit: BoxFit.cover,)),
                                    ),
                                    SizedBox(
                                      width: 13,
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Haylie Aminoff",
                                          style: AppStyles.blackTextStyle()
                                              .copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: kDarkBlueColor
                                          ),
                                        ),
                                        Text(
                                          "32 ${"kMinutesAgo".tr()}",
                                          style: AppStyles.blackTextStyle()
                                              .copyWith(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: kGreyShade7Color
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Text(
                                          "4.0",
                                          style: AppStyles.blackTextStyle()
                                              .copyWith(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                              color: kDarkBlueColor
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        RatingBarIndicator(
                                          rating: controller.rating.value,
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star_rounded,
                                            color: kAmberColor,
                                          ),
                                          itemCount: 5,
                                          itemSize: 18,
                                          unratedColor: Colors.grey[300],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12,),
                                Text(
                                  "Lorem ipsum dolor sit amet, consetetur sadi sspscing elitr, sed diam nonumy",
                                  style: AppStyles.blackTextStyle()
                                      .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              if(controller.selectedTab.value == "kRevenueDetails".tr())
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailRowWidget(title: "14/06/2021, 14:24 AM:", detail: "\$100",isEmployeePage: true,),
                      DetailRowWidget(title: "14/06/2021, 14:24 AM:", detail: "\$100",isEmployeePage: true,),
                      DetailRowWidget(title: "14/06/2021, 14:24 AM:", detail: "\$100",isEmployeePage: true,),
                      DetailRowWidget(title: "14/06/2021, 14:24 AM:", detail: "\$100",isEmployeePage: true,),
                    ],
                  ),
                ),
              Container(
                height: 66,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: kGreyShade5Color,
                            width: 0.4
                        )
                    )
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(title: "kCancel".tr(), onTap: (){
                      Get.back();
                    },borderColor: kBorderColor2,color: kWhiteColor,height: 40,width: 79,textSize: 14,fontWeight: FontWeight.w600,textColor: kDarkBlueColor,),
                    CustomButton(title: "kApplyDeduction".tr(), onTap: (){
                      Get.back();
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return approveDialogue(context,isApplyDeduction: true);
                        },
                      );
                    },height: 40,width: 151,textSize: 14,fontWeight: FontWeight.w600,),
                  ],
                ),
              )
            ],
          ),),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        // CommonCode.unFocus(context);
      },
      child: Scaffold(
        backgroundColor: kBgColor,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SideMenu(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 32),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "kUsers".tr(),
                              style: AppStyles.blackTextStyle().copyWith(
                                  fontSize: 20.sp, fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: kPrimaryColor.withOpacity(0.12),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: SvgPicture.asset(
                                    kNotificationIcon,
                                    height: 15,
                                    width: 15,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 22,),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: AppStyles.customBorder16
                              ),
                              child: ClipRRect(
                                borderRadius: AppStyles.customBorder16,
                                child: Image.asset(kAvatar,fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(width: 18,),
                            Column(
                              spacing: 3,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Musfiq",
                                  style: AppStyles.blackTextStyle().copyWith(
                                      fontSize: 14.sp, fontWeight: FontWeight.w500,color: kBlueColor),
                                ),
                                Text(
                                  "kAdmin".tr(),
                                  style: AppStyles.greyTextStyle().copyWith(
                                      fontSize: 12.sp, fontWeight: FontWeight.w400,color: kGreyShade7Color),
                                ),
                              ],
                            ),
                            SizedBox(width: 20,),
                            InkWell(
                                onTap: (){},
                                child: Icon(Icons.keyboard_arrow_down_rounded,size: 15,color: kBlueColor,))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            runSpacing: 28,
                            spacing: 28,
                            children: [
                              GestureDetector(
                                  onTap: () {

                                  },
                                  child: DashboardContainer(
                                    width: 202,
                                    height: 112,
                                    color: kPrimaryColor,
                                    title: "kTotalSuppliers".tr(),
                                    totalNumber: '1200',
                                    icon: kDoubleUserIcon,
                                  )),
                              GestureDetector(
                                onTap: () {
                                },
                                child: DashboardContainer(
                                  width: 202,
                                  height: 112,
                                  color: kDarkPrimaryColor,
                                  title: "kTotalDrivers".tr(),
                                  totalNumber: '1200',
                                  icon: kCashIcon,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                          Container(
                            height: 70,
                            width: 314,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kWhiteColor,
                              border: Border.all(color: kGreyShade3Color,width: 0.6),),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  kFilterIcon,
                                  height: 23,
                                  width: 20,
                                ),
                                Container(
                                  width: 0.3,
                                  color: kGreyShade5Color,
                                ),
                                Text(
                                  "kFilterBy".tr(),
                                  style: AppStyles.blackTextStyle()
                                      .copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,),
                                ),
                                Container(
                                  width: 0.3,
                                  color: kGreyShade5Color,
                                ),
                                Obx(() {
                                  return Text(
                                    controller.selectedOption.value.isEmpty? "kUserStatus".tr() : controller.selectedOption.value,
                                    style: AppStyles.blackTextStyle().copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  );
                                }),
                                PopupMenuButton<String>(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.circular(12),
                                  padding: EdgeInsets.all(0),
                                  position: PopupMenuPosition.under,
                                  onSelected: (value) {

                                  },
                                  itemBuilder: (BuildContext context) {
                                    return controller.options.map((option) {
                                      return PopupMenuItem<String>(
                                        value: option,
                                        child: Obx(() => Row(
                                          children: [
                                            Checkbox(
                                              value: controller.selectedOption.value == option,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              side: BorderSide(color: kBorderColor,width: 1),
                                              onChanged: (bool? newValue) {
                                                controller.selectOption(option);
                                                Navigator.pop(context);
                                              },
                                              activeColor: kGreyShade1Color,
                                            ),
                                            SizedBox(width: 8),
                                            Text(option),
                                          ],
                                        )),
                                      );
                                    }).toList();
                                  },
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    size: 24,
                                    color: kGreyShade1Color,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                          Obx(() => Container(
                            width: width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(14.r),
                                topRight: Radius.circular(14.r),
                              ),
                              border: Border.all(
                                  color: kGreyColor, width: 0.3),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  height: 49,
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14),
                                      topRight: Radius.circular(14),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width,
                                  child: DataTable(
                                    columnSpacing: 0,
                                    headingRowHeight: 49,
                                    columns: [
                                      DataColumn(
                                        label: Flexible(
                                          child: Text(
                                            "kUserId".tr(),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style:
                                            AppStyles.whiteTextStyle()
                                                .copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataColumn(
                                        label: Flexible(
                                          child: Text(
                                            "kName".tr(),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style:
                                            AppStyles.whiteTextStyle()
                                                .copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataColumn(
                                        label: Flexible(
                                          child: Text(
                                            "kUserType".tr(),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style:
                                            AppStyles.whiteTextStyle()
                                                .copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataColumn(
                                        label: Flexible(
                                          child: Text(
                                            "kEmail".tr(),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style:
                                            AppStyles.whiteTextStyle()
                                                .copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        headingRowAlignment: MainAxisAlignment.center,
                                      ),
                                      DataColumn(
                                        headingRowAlignment: MainAxisAlignment.center,
                                        label: Flexible(
                                          child: Text(
                                            "kPayReqStatus".tr(),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style:
                                            AppStyles.whiteTextStyle()
                                                .copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataColumn(
                                        headingRowAlignment:
                                        MainAxisAlignment.center,
                                        label: Flexible(
                                          child: Text(
                                            "kActions".tr(),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style:
                                            AppStyles.whiteTextStyle()
                                                .copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                    rows: controller.currentPageUsers
                                        .map((user) => _buildDataRow(
                                        user['id']!,
                                        user['name']!,
                                        user['type']!,
                                        user['email']!,
                                        user['status']!,
                                        user['statusBackColor'],
                                        user['StatusColor'],
                                        context))
                                        .toList(),
                                    dataRowMaxHeight: 65,
                                  ),
                                ),
                              ],
                            ),
                          ),),
                          SizedBox(
                            height: 51.h,
                          ),
                          Obx(() => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: controller.isBackButtonDisabled
                                    ? null
                                    : controller.goToPreviousPage,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 12),
                                  decoration: BoxDecoration(
                                    color: controller.isBackButtonDisabled
                                        ? kCreamColor2
                                        : kPrimaryColor,
                                    border: Border.all(
                                      color: controller.isBackButtonDisabled
                                          ? kCreamColor2
                                          : kPrimaryColor,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back_ios_new_outlined,
                                          size: 12,
                                          color:
                                          controller.isBackButtonDisabled
                                              ? kBlackColor
                                              : kWhiteColor),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "kBack".tr(),
                                        style: AppStyles.blackTextStyle()
                                            .copyWith(
                                          fontSize: 12,
                                          color:
                                          controller.isBackButtonDisabled
                                              ? kBlackColor
                                              : kWhiteColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ...List.generate(
                                controller.totalPages,
                                    (index) {
                                  bool isSelected = index + 1 ==
                                      controller.currentPage.value;
                                  return GestureDetector(
                                    onTap: () =>
                                        controller.changePage(index + 1),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 6),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 12),
                                        decoration: BoxDecoration(
                                          color: isSelected
                                              ? kPrimaryColor
                                              : kCreamColor2,
                                          borderRadius:
                                          BorderRadius.circular(4),
                                          border: Border.all(
                                            color: isSelected
                                                ? kPrimaryColor
                                                : kCreamColor,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            (index + 1).toString(),
                                            style: AppStyles.blackTextStyle()
                                                .copyWith(
                                              fontSize: 12,
                                              color: isSelected
                                                  ? kWhiteColor
                                                  : kBlackColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              // const SizedBox(width: 12,),
                              GestureDetector(
                                onTap: controller.isNextButtonDisabled
                                    ? null
                                    : controller.goToNextPage,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 12),
                                  decoration: BoxDecoration(
                                    color: controller.isNextButtonDisabled
                                        ? kCreamColor2
                                        : kPrimaryColor,
                                    border: Border.all(
                                        color: controller.isNextButtonDisabled ? kCreamColor2 : kPrimaryColor
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "kNext".tr(),
                                        style: AppStyles.blackTextStyle()
                                            .copyWith(
                                          fontSize: 12,
                                          color:
                                          controller.isNextButtonDisabled
                                              ? kBlackColor
                                              : kWhiteColor,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Icon(Icons.arrow_forward_ios_outlined,
                                          size: 12,
                                          color:
                                          controller.isNextButtonDisabled
                                              ? kBlackColor
                                              : kWhiteColor),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  DataRow _buildDataRow(String id, String name, String type, String email, String status,
      Color statusColor, Color statusBackColor, context) {

    return DataRow(
      cells: [
        DataCell(Text(
          id,
          textAlign: TextAlign.center,
          style: AppStyles.blackTextStyle()
              .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
        )),
        DataCell(Text(
          name,
          textAlign: TextAlign.center,
          style: AppStyles.blackTextStyle()
              .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
        )),
        DataCell(Text(
          type,
          textAlign: TextAlign.center,
          style: AppStyles.blackTextStyle()
              .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
        )),
        DataCell(Center(
          child: Text(
            email,
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle()
                .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
        )),
        DataCell(
          Center(
            child: Container(
              width: 93.w,
              height: 27,
              decoration: BoxDecoration(
                color: statusBackColor,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Center(
                child: Text(
                  status,
                  style: AppStyles.blackTextStyle().copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: statusColor),
                ),
              ),
            ),
          ),
        ),
        DataCell(
          Center(
            child: Container(
              height: 32,
              width: 96.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: kCreamColor,
                  border: Border.all(color: kGreyShade5Color, width: 0.4)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {

                        },
                        child: SvgPicture.asset(
                          kDeleteIcon,
                          height: 19.h,
                          width: 19.w,
                        ),
                      ),
                    ),
                    Container(
                      width: 0.4,
                      color: kGreyShade5Color,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return detailsDialogue(context);
                            },
                          );
                        },
                        child: SvgPicture.asset(
                          kEyeIcon,
                          height: 19.h,
                          width: 19.w,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

}