import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ny_times_popular_articles_demo_app/app/data/model/popular_article_model.dart';
import 'package:ny_times_popular_articles_demo_app/app/routes/app_pages.dart';

import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  Obx _body() {
    return Obx(
      () {
        if (controller.loading.value) {
          return const Center(
              child: CircularProgressIndicator(color: Color(0xFF14A37F)));
        } else {
          return _contentBody();
        }
      },
    );
  }

  Widget _contentBody() {
    return (controller.popularArticle.results != null ||
            controller.popularArticle.results != [])
        ? DefaultTabController(
            length: 3,
            child: Column(
              children: [
                const TabBar(
                    labelPadding: EdgeInsets.zero,
                    indicator: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom: BorderSide(
                          width: 3,
                          color: Color(0xFF14A37F),
                        ))),
                    padding: EdgeInsets.only(top: 12, bottom: 2),
                    tabs: [
                      Tab(
                        // text: "Most Popular",

                        child: Text(
                          "Most Popular",
                          style: TextStyle(
                              color: Color(0xFF14A37F),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Tab(
                        // text: "Popular",
                        child: Text(
                          "Shared",
                          style: TextStyle(
                              color: Color(0xFF14A37F),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Tab(
                        // text: "Popular",
                        child: Text(
                          "Emailed",
                          style: TextStyle(
                              color: Color(0xFF14A37F),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                    dividerColor: Colors.transparent,
                    indicatorColor: Color(0xFF14A37F)),
                Expanded(
                  child: TabBarView(
                    children: [
                      _popularArticles(controller.popularArticle.results ?? []),
                      _popularArticles(controller.sharedArticle.results ?? []),
                      _popularArticles(controller.emailArticle.results ?? []),
                    ],
                  ),
                ),
              ],
            ),
          )
        : const SizedBox();
  }

  ListView _popularArticles(List<Results> result) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: result.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Get.toNamed(Routes.DETAILS_SCREEN, arguments: result[index]);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(9.0),
            child: Container(
              height: 150,
              margin: const EdgeInsets.only(bottom: 26),
              padding: const EdgeInsets.only(left: 10.0, bottom: 10.0, top: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 28,
                    color: Colors.black.withAlpha(
                      30,
                    ),
                  ),
                ],
                color: Colors.white,
                border: const Border(
                    left: BorderSide(
                  width: 6.0,
                  color: Color(0xFF14A37F),
                )),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      children: [
                        const Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xFF14A37F),
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  result[index].title ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  result[index].byline ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black.withOpacity(0.5)),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      result[index].publishedDate ?? '',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black.withOpacity(0.5)),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(CupertinoIcons.forward,
                            color: Color.fromARGB(255, 38, 177, 142))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: const Color(0xFF1AC79C),
      title: const Text('NY Times Most Popular'),
      centerTitle: true,
    );
  }
}
