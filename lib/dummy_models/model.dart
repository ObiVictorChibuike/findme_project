import 'package:flutter/material.dart';

class CategoryImages{
  final String? images;
  CategoryImages({this.images});

  static List<CategoryImages> serviceCategory = <CategoryImages>[
    CategoryImages(
      images: 'assets/image1.png'
    ),
    CategoryImages(
        images: 'assets/image2.png'
    ),
    CategoryImages(
        images: 'assets/image3.png'
    ),
    CategoryImages(
        images: 'assets/image4.png'
    ),
  ];
}
