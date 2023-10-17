import 'package:get/get.dart';
import 'package:ny_times_popular_articles_demo_app/app/data/api/popular_article_get_service.dart';
import 'package:ny_times_popular_articles_demo_app/app/data/model/popular_article_model.dart';

class HomeScreenController extends GetxController {
  //TODO: Implement HomeScreenController

  var loading = true.obs;

  var popularArticle = NyPopularArticleModel();
  var emailArticle = NyPopularArticleModel();
  var sharedArticle = NyPopularArticleModel();

  @override
  void onInit() {
    super.onInit();
    fetchData();
    fetchData2();
    fetchData3();
  }

  fetchData() async {
    try {
      loading(true);
      await ServicesAPIs.getPopularArticleItemDetails().then((value) {
        if (value != null) {
          popularArticle = value;
        }
        loading(false);
      });
    } catch (e) {
      loading(false);
    }
  }

  fetchData2() async {
    try {
      loading(true);
      await ServicesAPIs.getSharedItemDetails().then((value) {
        if (value != null) {
          sharedArticle = value;
        }
        loading(false);
      });
    } catch (e) {
      loading(false);
    }
  }

  fetchData3() async {
    try {
      loading(true);
      await ServicesAPIs.getEmailedItemDetails().then((value) {
        if (value != null) {
          emailArticle = value;
        }
        loading(false);
      });
    } catch (e) {
      loading(false);
    }
  }
}
