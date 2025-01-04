
import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
// ignore: unused_import
import 'package:news_app/widgets/category_card.dart';

import '../widgets/news_list_view_builder.dart';




class HomeNews extends StatelessWidget {
  const HomeNews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 3, 40, 104),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoriesListView()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
        NewsListViewBuildere(category: 'general',)
             
         
            ],
          ),
        ));
  }
}

