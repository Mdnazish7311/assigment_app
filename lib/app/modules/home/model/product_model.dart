class ProductModel {
  final int id;
  String name;
  String weight;
  String price;
  String image;

  ProductModel(
      {required this.name,
      required this.id,
      required this.price,
      required this.weight,
      required this.image});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      weight: json['weight'],
      price: json['price'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'weight': weight,
      'price': price,
      'image': image,
    };
  }
}
