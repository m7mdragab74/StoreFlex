// ignore_for_file: file_names, missing_required_param

import 'package:store_app/helper/api.dart';

class GetAllCategoriesServices {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
