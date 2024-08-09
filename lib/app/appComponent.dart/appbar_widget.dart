import 'package:assignment_app/app/data/utility/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar appbarComponent() {
  return AppBar(
    backgroundColor: Colors.green,
    leading: Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: CircleAvatar(
        radius: 18.r,
        child: Icon(Icons.person),
      ),
    ),
    title: Text(
      'Grocery Food App',
      style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.whiteColor),
    ),
    centerTitle: true,
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 16.w),
        child: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            // Handle logout action
          },
        ),
      ),
    ],
  );
}
