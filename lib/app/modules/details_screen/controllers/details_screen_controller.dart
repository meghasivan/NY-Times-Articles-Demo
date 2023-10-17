import 'package:get/get.dart';
import 'package:ny_times_popular_articles_demo_app/app/data/model/popular_article_model.dart';

class DetailsScreenController extends GetxController {
  //TODO: Implement DetailsScreenController

  var articleDetails = Results();
  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      articleDetails = Get.arguments;
    }
  }
}
