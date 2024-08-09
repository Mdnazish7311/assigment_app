import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../category_model.dart';
import '../product_model.dart';
import '../recend_ordered_product_model.dart';

class HomeController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductList>[].obs;
  var categoryList = <CategoryList>[].obs;
  var recentOrderedProductList = <RecentOrderedProductList>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadCategoryData();
    loadProductData();
    loadRecendOrderedProductData();
  }

  //  ********************************** Load category data from json file *******************************************************
  loadCategoryData() async {
    try {
      final categoryString =
          await rootBundle.loadString('assets/jsonFiles/category.json');
      final categoryData = jsonDecode(categoryString);
      final data = Category.fromJson(categoryData).categoryList;
      if (data != null) {
        categoryList.assignAll(data);
      }
    } catch (e) {
      rethrow;
    }
  }

  // ***************************** loading data from json file  *****************************8

  void loadProductData() async {
    isLoading(true);

    try {
      final productString =
          await rootBundle.loadString('assets/jsonFiles/product.json');
      final productData = jsonDecode(productString);
      final products = Product.fromJson(productData).productList;

      if (products != null) {
        productList.assignAll(products);
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  // *************************************************** Load Recent Ordered Product data from json file****************************************************

  void loadRecendOrderedProductData() async {
    try {
      final productString = await rootBundle
          .loadString('assets/jsonFiles/recend_ordered_product.json');
      final data = jsonDecode(productString);

      final recendOrderedData =
          RecendOrderedProduct.fromJson(data).recentOrderedProductLists;

      if (recendOrderedData != null) {
        recentOrderedProductList.assignAll(recendOrderedData);
      }
    } catch (e) {
      // Handle error here
    }
  }
}
