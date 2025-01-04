import 'package:dio/dio.dart';
import 'package:news_app/models/articale_service_model.dart';

class NewsService{
  
final Dio dio; 
NewsService(this.dio);

Future<List<ArticaleModele>> getNews({required String category})async{
try {
  var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=02c3fa9cbaa34bf9a014c5c681fdc8db&category=$category');
  
   Map<String,dynamic>jsonData=response.data;
   List <dynamic>articles=jsonData['articles'];
  List<ArticaleModele>articlesList=[];
  for (var article in articles) {
    ArticaleModele articaleModele= ArticaleModele.fromjson(article);
    
  articlesList.add(articaleModele);
  }
  
  return articlesList;
} catch (e) { 
  return[];  
}
}

}