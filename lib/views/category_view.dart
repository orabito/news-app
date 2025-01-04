
import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 3, 40, 104),iconTheme:IconThemeData(color: Colors.white),
        centerTitle: true,
        elevation: 0,
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Text(
              'News',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Color.fromARGB(255, 78, 162, 230)),
            ),
          ],
        ),
      ),
      body:CustomScrollView(slivers: 
      [
        NewsListViewBuildere(
          category: category,
        )
      ],)

      
    );
  }
} 