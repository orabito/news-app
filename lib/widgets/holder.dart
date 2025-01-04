
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/articale_service_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List <ArticaleModele>articles=[];
//   bool isloading= true;
  
//   @override
//   void initState() {
 
  
//     super.initState();
//      getGenarelNews();
//   }

//   Future<void> getGenarelNews() async {
    
//      articles=await  NewsService(Dio()).getNews();
//      isloading = false;

//  setState(() {});
 
 
//   }
//   @override 
//   Widget build(BuildContext context) {
    
//     return isloading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: (SliverChildBuilderDelegate((context, index) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 50),
//                 child: NewsTile(
//                   articaleModele: articles[index],
//                 ),
//               );
//             }, childCount: articles.length)),
//           );
//   }
// }





//  return isloading
//         ? const SliverToBoxAdapter(
//             child: Center(
//                 child: Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 200),
//                     child: CircularProgressIndicator())))
//         : articles.isNotEmpty
//             ? NewsListView(
//                 articles: articles,
//               )
//             : const SliverToBoxAdapter(
//                 child: Center(
//                  child: Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 200),
//                   child: Text(
//                     'oops there was an error ,try later', maxLines: 1,
//                     style: TextStyle(fontSize: 30,
//                  ),
//                   ),
//                 ),
//               ));