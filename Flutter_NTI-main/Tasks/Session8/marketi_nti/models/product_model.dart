class ProductModel {
  final String image;
  final String name;
  final num price;
  final double rate;

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      image: json['thumbnail'],
      name: json['title'],
      price: json['price'].toDouble(),
      rate: json['rating'].toDouble(),
    );
  }
}
