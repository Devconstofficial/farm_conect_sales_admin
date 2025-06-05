import 'package:easy_localization/easy_localization.dart';
import 'package:farmer_sales_admin/utils/app_colors.dart';
import 'package:farmer_sales_admin/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../utils/app_styles.dart';

class TotalRevenueChart extends StatelessWidget {
  const TotalRevenueChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 24,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kWhiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "kTotalRevenue".tr(),
                style: AppStyles.blackTextStyle().copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(width: 17),
              Center(
                child: Container(
                  height: 20,
                  width: 2,
                  color: kBlackTextColor2.withOpacity(0.2),
                ),
              ),
              SizedBox(width: 17),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    "kCurrentWeek".tr(),
                    style: AppStyles.whiteTextStyle().copyWith(
                      fontSize: 13.sp,
                      color: kBlackTextColor2,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 16),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration: const BoxDecoration(
                      color: kRedColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    "kPreviousWeek".tr(),
                    style: AppStyles.whiteTextStyle().copyWith(
                      fontSize: 13.sp,
                      color: kBlackTextColor2,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          SizedBox(
            height: 244,
            child: SfCartesianChart(
              margin: EdgeInsets.zero,
              plotAreaBorderColor: Colors.transparent,
              primaryXAxis: CategoryAxis(
                labelStyle: AppStyles.whiteTextStyle().copyWith(
                  fontSize: 13.sp,
                  color: kBlackTextColor2,
                ),
                majorGridLines: const MajorGridLines(width: 0),
              ),
              primaryYAxis: NumericAxis(
                minimum: 0,
                maximum: 30,
                interval: 10,
                labelStyle: AppStyles.whiteTextStyle().copyWith(
                  fontSize: 13.sp,
                  color: kBlackTextColor2,
                ),
                majorGridLines: MajorGridLines(
                  color: kBlackTextColor2.withOpacity(0.2),
                ),
              ),
              series: <CartesianSeries>[
                SplineSeries<RevenueData, String>(
                  name: "kCurrentWeek".tr(),
                  color: kPrimaryColor,
                  width: 3,
                  markerSettings: MarkerSettings(
                    isVisible: true,
                    color: kBlackTextColor2.withOpacity(0.2),
                  ),
                  dataSource: getCurrentWeekData(),
                  xValueMapper: (RevenueData revenue, _) => revenue.month,
                  yValueMapper: (RevenueData revenue, _) => revenue.revenue,
                ),
                SplineSeries<RevenueData, String>(
                  name: "kPreviousWeek".tr(),
                  color: kRedColor,
                  width: 3,
                  // dashArray: const <double>[5, 5],
                  dataSource: getPreviousWeekData(),
                  xValueMapper: (RevenueData revenue, _) => revenue.month,
                  yValueMapper: (RevenueData revenue, _) => revenue.revenue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<RevenueData> getCurrentWeekData() {
    return [
      RevenueData("kMonthJan".tr(), 10),
      RevenueData("kMonthFeb".tr(), 20),
      RevenueData("kMonthMar".tr(), 15),
      RevenueData("kMonthApr".tr(), 10),
      RevenueData("kMonthMay".tr(), 12),
      RevenueData("kMonthJun".tr(), 18),
      RevenueData("kMonthJul".tr(), 25),
    ];
  }

  List<RevenueData> getPreviousWeekData() {
    return [
      RevenueData("kMonthJan".tr(), 15),
      RevenueData("kMonthFeb".tr(), 10),
      RevenueData("kMonthMar".tr(), 18),
      RevenueData("kMonthApr".tr(), 12),
      RevenueData("kMonthMay".tr(), 15),
      RevenueData("kMonthJun".tr(), 20),
      RevenueData("kMonthJul".tr(), 22),
    ];
  }
}

class RevenueData {
  final String month;
  final double revenue;

  RevenueData(this.month, this.revenue);
}
