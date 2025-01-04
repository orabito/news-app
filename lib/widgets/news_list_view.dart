

import 'package:flutter/material.dart';
import 'package:news_app/models/articale_service_model.dart';

import 'package:news_app/widgets/news_tile.dart';


 class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});
  final List<ArticaleModele> articles ;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: (SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: NewsTile(
            articaleModele: articles[index],
          ),
        );
      }, childCount: articles.length)),
    );
  }
}
