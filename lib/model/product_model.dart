import 'package:store_app/model/rating_model.dart';

class ProductModel {
  final int id;
  final String title;
  final double price;
  final String category;
  final String image;
  final String description;
  final RatingModel rating;

  ProductModel({
    required this.category,
    required this.id,
    required this.image,
    required this.price,
    required this.title,
    required this.description,
    required this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      category: jsonData['category'],
      id: jsonData['id'],
      image: jsonData['image'],
      price: (jsonData['price'] is int)
          ? (jsonData['price'] as int).toDouble()
          : jsonData['price'].toDouble(),
      title: jsonData['title'],
      description: jsonData['description'],
      rating: RatingModel.fromJson(jsonData['rating']),
    );
  }
}
