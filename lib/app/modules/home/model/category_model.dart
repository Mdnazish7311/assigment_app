class CategoryModel {
  int id;
  String categoryName;
  String categoryImage;

  CategoryModel(
      {required this.id,
      required this.categoryName,
      required this.categoryImage});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      categoryName: json['name'],
      categoryImage: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': categoryName,
      'image': categoryImage,
    };
  }
}
