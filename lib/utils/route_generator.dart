import 'package:farmer_sales_admin/screens/dashboard_screen/dashboard_screen.dart';
import 'package:farmer_sales_admin/utils/screen_bindings.dart';
import 'package:get/get.dart';
import 'app_strings.dart';


class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(name: kDashboardScreenRoute, page: () => DashboardScreen(), binding: ScreenBindings(),),
      ];
  }
}

