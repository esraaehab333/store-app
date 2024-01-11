import 'package:store_app/helper/custom_api.dart';
import 'package:store_app/models/product_model.dart';

class AddProuduct {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await CustomApi().post(url: "https://fakestoreapi.com/products", body: {
      "title": title,
      "price": price,
      "description": desc,
      "category": category,
      "image": image,
    });
    return ProductModel.fromJson(data);
  }
}
