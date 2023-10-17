import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ny_times_popular_articles_demo_app/app/routes/app_pages.dart';

void main() async {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, _) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Application",
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
      ),
    ),
  );
}
