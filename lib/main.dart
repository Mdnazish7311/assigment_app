import 'package:assignment_app/app/data/utility/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: ThemeData(
            primaryColor: Colors.green,
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: Colors.green,
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.green,
            ),
            scaffoldBackgroundColor: AppColors.whiteColor,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
        );
      },
    ),
  );
}
