


import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.Category,});
final CategoryModel Category;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){ 
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(category:Category.categoryName);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right:16),
        child: Container(
              
          height: 100,
          width: 160,
          decoration:  BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Category.image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10),
              
                
        
          ),
          child:   Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              Category.categoryName,
              style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 18,  backgroundColor: Colors.grey,
              color: Color.fromRGBO(218, 248, 222, 0.898)),
            ),
          ),
        ),
      ),
    );
  }
}
