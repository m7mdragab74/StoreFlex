import 'package:store_app/model/rating_model.dart';

class GetAllProductModel {
  final int id;
  final String title;
  final double price;
  final String category;
  final String image;
  final String description;
  final RatingModel rating;
  GetAllProductModel({
    required this.category,
    required this.id,
    required this.image,
    required this.price,
    required this.title,
    required this.description,
    required this.rating,
  });

  factory GetAllProductModel.fromJson(jsonData) {
    return GetAllProductModel(
      category: jsonData['category'],
      id: jsonData['id'],
      image: jsonData['image'],
      price: jsonData['price'],
      title: jsonData['title'],
      description: jsonData['description'],
      rating: RatingModel.fromJson(jsonData['rating']),
    );
  }
}
