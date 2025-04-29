import 'package:farmer_sales_admin/screens/dashboard_screen/dashboard_screen.dart';
import 'package:farmer_sales_admin/screens/employee_screen/employee_screen.dart';
import 'package:farmer_sales_admin/screens/user_screen/user_screen.dart';
import 'package:farmer_sales_admin/utils/screen_bindings.dart';
import 'package:get/get.dart';
import '../screens/report_screen/report_screen.dart';
import 'app_strings.dart';


class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(name: kDashboardScreenRoute, page: () => DashboardScreen(), binding: ScreenBindings(),),
      GetPage(name: kUserScreenRoute, page: () => UserScreen(), binding: ScreenBindings(),),
      GetPage(name: kEmployeeScreenRoute, page: () => EmployeeScreen(), binding: ScreenBindings(),),
      GetPage(name: kReportScreenRoute, page: () => ReportScreen(), binding: ScreenBindings(),),
      ];
  }
}

