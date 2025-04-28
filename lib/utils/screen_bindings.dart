import 'package:farmer_sales_admin/screens/dashboard_screen/controller/dashboard_controller.dart';
import 'package:get/get.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}
