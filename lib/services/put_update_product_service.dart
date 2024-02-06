import 'package:store_app/helper/custom_api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required int id,
      required String category}) async {
    Map<String, dynamic> data = await CustomApi()
        .put(url: "https://fakestoreapi.com/products/$id", body: {
      "title": title,
      "price": price,
      "description": desc,
      "category": category,
      "image": image,
    });
    print(id);
    return ProductModel.fromJson(data);
  }
}
