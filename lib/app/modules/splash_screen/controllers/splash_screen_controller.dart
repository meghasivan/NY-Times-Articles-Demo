import 'package:get/get.dart';
import 'package:ny_times_popular_articles_demo_app/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.HOME_SCREEN);
    });
  }
}
