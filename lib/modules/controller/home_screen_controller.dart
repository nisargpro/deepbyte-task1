import 'package:get/get.dart';
import 'package:product_list/modules/model/ListModel.dart';
import 'package:product_list/modules/repository/home_screen_repository.dart';

class HomePageController extends GetxController{
  final size = Get.context?.size;
  Rxn<ListModel> data = Rxn();

@override
  void onInit()async {
    data.value = await HomeScreenRepository.getJson('payload');
    super.onInit();
  }
}
