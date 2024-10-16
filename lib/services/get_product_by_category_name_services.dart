import 'dart:convert';

import 'package:store_app/model/get_all_product_model.dart';
import 'package:http/http.dart' as http;

class GetProductByCategoryNameServices {
  Future<List<GetAllProductModel>> getProducts(
      {required String categoryName}) async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$categoryName'),
    );
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<GetAllProductModel> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(
          GetAllProductModel.fromJson(data[i]),
        );
      }
      return productList;
    } else {
      throw Exception(
          'there is a problem with status code${response.statusCode}');
    }
  }
}
