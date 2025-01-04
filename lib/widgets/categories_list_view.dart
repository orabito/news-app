


import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({ super.key,});
  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'Business', image: 'assets/images/business.jpeg'),
    CategoryModel(
        categoryName: 'Entertainment', image: 'assets/images/entertainment .jpeg'),
    CategoryModel(categoryName: 'Technology', image: 'assets/images/technology.jpeg'),
    CategoryModel(categoryName: 'Sports', image: 'assets/images/sport.jpg'),
    CategoryModel(categoryName: 'General', image: 'assets/images/general.jpeg'),
    CategoryModel(categoryName: 'Health', image: 'assets/images/health.png'),
    CategoryModel(categoryName: 'Science', image: 'assets/images/science.jpeg'),
  
  ]; 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        child: ListView.builder(
            scrollDirection: Axis.horizontal, 
            itemCount:categories.length ,
            itemBuilder: (context, index) {
              return  CategoryCard(
                Category: categories[index],
              );
            }),
      );
  }
}


