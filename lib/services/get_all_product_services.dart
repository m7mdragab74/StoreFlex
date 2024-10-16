import 'package:store_app/helper/api.dart';
import 'package:store_app/model/get_all_product_model.dart';

class GetAllProductServices {
  Future<List<GetAllProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    List<GetAllProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        GetAllProductModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
