class ProductModel {
  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  final RattingModel? ratting;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.ratting});
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData["id"],
        title: jsonData["title"],
        price: jsonData['price'] == null ? 0.0 : jsonData['price'].toDouble(),
        description: jsonData["description"],
        category: jsonData["category"],
        image: jsonData["image"],
        ratting: RattingModel.fromJson(jsonData["rating"]));
  }
}

class RattingModel {
  final double? rate;
  final int? count;

  RattingModel({required this.rate, required this.count});
  factory RattingModel.fromJson(jData) {
    return RattingModel(rate: jData['rate'] == null ? 0.0 : jData['rate'].toDouble(), count: jData["conut"]);
  }
}
 