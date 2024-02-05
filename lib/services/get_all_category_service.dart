
import 'package:store_app/helper/custom_api.dart';

class AllProuductCategory {
  Future<List<dynamic>> getAllCategory() async {
    List<dynamic> data = await CustomApi()
        .get(url: "https://fakestoreapi.com/products/categories");
    return data;
  }
}
