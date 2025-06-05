import 'package:easy_localization/easy_localization.dart';
import 'package:farmer_sales_admin/utils/app_strings.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';

class SalesController extends GetxController {
  var selectedUserType = ''.obs;
  var selectedTab = kRevenueGenerated.obs;
  List<String> options = ["kAll".tr(), "${"kCollectionPoint".tr()} A", "${"kCollectionPoint".tr()} B"];
  RxString selectedOption = "".obs;
  RxDouble rating = 5.0.obs;

  void selectOption(String option) {
    selectedOption.value = option;
  }

  void resetSelection() {
    selectedOption.value = "";
  }

  final products = [
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
  ].obs;


}