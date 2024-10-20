// ignore_for_file: missing_required_param

import 'package:store_app/helper/api.dart';
import 'package:store_app/model/product_model.dart';

class GetProductByCategoryNameServices {
  Future<List<ProductModel>> getProducts({required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
