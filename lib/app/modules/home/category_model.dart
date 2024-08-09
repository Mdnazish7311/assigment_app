class Category {
  List<CategoryList>? categoryList;
  Category({this.categoryList});

  Category.fromJson(Map<String, dynamic> json) {
    if (json['CategoryList'] != null) {
      categoryList = <CategoryList>[];
      json['CategoryList'].forEach((v) {
        categoryList?.add(CategoryList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (categoryList != null) {
      data['CategoryList'] = categoryList?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryList {
  int? id;
  String? name;
  String? image;

  CategoryList({this.id, this.name, this.image});

  CategoryList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    return data;
  }
}
