import 'package:get/get.dart';

class HomeController extends GetxController {
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    _loadData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void _loadData() async {
    await Future.delayed(
        const Duration(seconds: 5)); // Simulating network delay
    isLoading(false); // Stop loading after 5 seconds
  }
}
