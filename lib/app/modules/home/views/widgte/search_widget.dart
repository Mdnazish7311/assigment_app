import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildSearchBar() {
  return Container(
    margin: const EdgeInsets.only(top: 16.0),
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(color: Colors.black, width: 1.0),
    ),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Here',
              hintStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
              border: InputBorder.none,
            ),
          ),
        ),
        const Icon(Icons.search, color: Colors.grey),
      ],
    ),
  );
}