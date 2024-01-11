import 'package:store_app/helper/custom_api.dart';
import 'package:store_app/models/product_model.dart';

class AllProuductServices {
  Future<List<ProductModel>> getAllProuducr() async {
      List<dynamic> data = await CustomApi().get(url: "https://fakestoreapi.com/products");
      List<ProductModel> productList = List.generate(
          data.length, (index) => ProductModel.fromJson(data[index]));
      return productList;
    }
}
