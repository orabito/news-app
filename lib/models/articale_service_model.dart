class ArticaleModele {

 final String? imagearticale;
 final  String title ;
 final  String? subTitle;
 final String ?url;
ArticaleModele({ required this.url,required this.imagearticale, required this.subTitle, required this.title});
  factory ArticaleModele.fromjson(josn){
  return ArticaleModele(imagearticale: josn['urlToImage'], subTitle:josn['description'], title: josn['title'],url: josn['url']);
  }
}