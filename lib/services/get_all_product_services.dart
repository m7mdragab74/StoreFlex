import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_app/model/get_all_product_model.dart';

class GetAllProductServices {
  Future<List<GetAllProductModel>> getAllProducts() async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
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
