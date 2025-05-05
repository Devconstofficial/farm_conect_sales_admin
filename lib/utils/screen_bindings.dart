import 'package:farmer_sales_admin/screens/chat_screen/controller/chat_controller.dart';
import 'package:farmer_sales_admin/screens/dashboard_screen/controller/dashboard_controller.dart';
import 'package:farmer_sales_admin/screens/employee_screen/controller/employee_controller.dart';
import 'package:farmer_sales_admin/screens/report_screen/controller/report_controller.dart';
import 'package:get/get.dart';

import '../screens/sales_screen/controller/sales_controller.dart';
import '../screens/user_screen/controller/user_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => UserController());
    Get.lazyPut(() => EmployeeController());
    Get.lazyPut(() => ReportController());
    Get.lazyPut(() => SalesController());
    Get.lazyPut(() => ChatController());
  }
}
