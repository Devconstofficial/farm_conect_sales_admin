import 'package:farmer_sales_admin/screens/dashboard_screen/dashboard_screen.dart';
import 'package:farmer_sales_admin/screens/employee_screen/employee_screen.dart';
import 'package:farmer_sales_admin/screens/sales_screen/sales_srceen.dart';
import 'package:farmer_sales_admin/screens/user_screen/user_screen.dart';
import 'package:farmer_sales_admin/utils/screen_bindings.dart';
import 'package:get/get.dart';
import '../screens/auth/auth_screen.dart';
import '../screens/auth/send_otp_screen.dart';
import '../screens/auth/set_new_pass.dart';
import '../screens/auth/verify_otp_screen.dart';
import '../screens/chat_screen/chat_screen.dart';
import '../screens/report_screen/report_screen.dart';
import 'app_strings.dart';


class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(name: kDashboardScreenRoute, page: () => DashboardScreen(), binding: ScreenBindings(),),
      GetPage(name: kUserScreenRoute, page: () => UserScreen(), binding: ScreenBindings(),),
      GetPage(name: kEmployeeScreenRoute, page: () => EmployeeScreen(), binding: ScreenBindings(),),
      GetPage(name: kReportScreenRoute, page: () => ReportScreen(), binding: ScreenBindings(),),
      GetPage(name: kSalesScreenRoute, page: () => SalesScreen(), binding: ScreenBindings(),),
      GetPage(name: kChatScreenRoute, page: () => ChatScreen(), binding: ScreenBindings(),),

      GetPage(
        name: kAuthScreenRoute,
        page: () => const AuthScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kSendOtpScreenRoute,
        page: () => const SendOtpScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kVerifyScreenRoute,
        page: () => const VerifyOtpScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kSetNewPassScreenRoute,
        page: () => const SetNewPassScreen(),
        binding: ScreenBindings(),
      ),
      ];
  }
}

