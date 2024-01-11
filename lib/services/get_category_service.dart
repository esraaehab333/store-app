import 'package:store_app/helper/custom_api.dart';
import 'package:store_app/models/product_model.dart';

class AllProuductServices {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await CustomApi()
        .get(url: "https://fakestoreapi.com/products/category/$categoryName");
      List<ProductModel> categoryList = List.generate(
          data.length, (index) => ProductModel.fromJson(data[index]));
      return categoryList;
    } 
}
