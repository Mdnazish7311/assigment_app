import 'package:assignment_app/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690), // Set your design size here
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: ThemeData(
            primaryColor: Colors.green, // Set your primary color here
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: Colors.green, // This also sets primary color
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.green, // Set AppBar color
            ),
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const HomeView(), // Your initial screen
    ),
  );
}
