import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articale_service_model.dart';


import '../services/news_service.dart';
import 'news_list_view.dart';


class NewsListViewBuildere extends StatefulWidget {
 const NewsListViewBuildere({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuildere> createState() => _NewsListViewBuildereState();
}

class _NewsListViewBuildereState extends State<NewsListViewBuildere> {
  var future;
  
  @override
  void initState() {  
   future= NewsService(Dio()).getNews(category: widget.category);
    // TODO: implement initState
    super.initState();
    setState(() {
      
    });
  } 
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticaleModele>>(
        future:future ,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 200),
                  child: Text(
                    'oops there was an error ,try later',
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 200),
                        child: CircularProgressIndicator())));
          }
        });













    // return isloading
    //     ? const SliverToBoxAdapter(
    //         child: Center(
    //             child: Padding(
    //                 padding: const EdgeInsets.symmetric(vertical: 200),
    //                 child: CircularProgressIndicator())))
    //     : articles.isNotEmpty
    //         ? NewsListView(
    //             articles: articles,
    //           )
    //         : const SliverToBoxAdapter(
    //             child: Center(
    //              child: Padding(
    //               padding: const EdgeInsets.symmetric(vertical: 200),
    //               child: Text(
    //                 'oops there was an error ,try later', maxLines: 1,
    //                 style: TextStyle(fontSize: 30,
    //              ),
    //               ),
    //             ),
    //           ));
  }
}
