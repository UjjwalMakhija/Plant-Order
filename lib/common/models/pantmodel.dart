import 'dart:convert';

import 'package:plant_order/common/models/rating.dart';

class plant {
  final String name;
  final String description;
  final List<String> images;
  final double price;
  final double quantity;
  final String category;
  final String? id;
  final List<Rating>? rating;

  plant(
      {
      required this.name,
      required this.description,
      required this.images,
      required this.price,
      required this.quantity,
      required this.category,
       this.id,
       this.rating
       
       }
      );

    Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'quantity': quantity,
      'images': images,
      'category': category,
      'id': id,
      'rating': rating
    };
  }
    factory plant.fromMap(Map<String, dynamic> map) {
    return plant(
        name: map['name'] ?? '',
        description: map['description'] ?? '',
        price: map['price']?.toDouble() ?? 0.0,
        quantity: map['quantity']?.toDouble() ?? 0.0,
        images: List<String>.from(map['images']),
        category: map['category'] ?? '',
        id: map['_id'] ?? '',
        rating: map['rating']?.toDouble() ?? 0.0
);  }

  String toJson() => json.encode(toMap());

  factory plant.fromJson(String source) =>
      plant.fromMap(json.decode(source));
}
