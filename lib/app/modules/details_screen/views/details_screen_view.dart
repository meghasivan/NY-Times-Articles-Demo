import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ny_times_popular_articles_demo_app/app/modules/home_screen/controllers/home_screen_controller.dart';

import '../controllers/details_screen_controller.dart';

class DetailsScreenView extends GetView<DetailsScreenController> {
  const DetailsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(child: _body()),
    );
  }

  Obx _body() {
    return Obx(
      () {
        if (Get.put(HomeScreenController()).loading.value) {
          return const Center(
              child: CircularProgressIndicator(color: Color(0xFF14A37F)));
        } else {
          return _contentBody();
        }
      },
    );
  }

  Widget _contentBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.articleDetails.title ?? '',
              // textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                controller.articleDetails.publishedDate ?? '',
                // textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5)),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Image.network(
              controller.articleDetails.media?[0].mediaMetadata?[0].url ?? '',
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.image,
              ),
              // loadingBuilder: (context, child, loadingProgress) =>
              //     const CircularProgressIndicator(
              //   color: Color(0xFF14A37F),
              // ),
              fit: BoxFit.fitWidth,
              filterQuality: FilterQuality.high,
              width: Get.width,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              controller.articleDetails.media?[0].caption ?? '',
              // textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.5)),
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              color: Color(0xFF72CEB7),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const CircleAvatar(
                  radius: 16,
                  backgroundColor: Color(0xFF14A37F),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  controller.articleDetails.byline ?? '',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.6)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color(0xFF72CEB7),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              controller.articleDetails.abstract ?? '',
              // textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.8)),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: const Color(0xFF1AC79C),
      title: Text(controller.articleDetails.source ?? ''),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(CupertinoIcons.back),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
