// https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=bc54edcb741a42c3bff144e7b5f6c63d

import 'dart:convert';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/model/news_art.dart';


class FetchNews{


  static List sourcesId = [
    "abc-news",
 
    "bbc-news",
    "bbc-sport",

    "business-insider",

    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
   
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",

    "medical-news-today",
    
    "national-geographic",
 
    "news24",
    "new-scientist",
   
    "new-york-magazine",
    "next-big-future",
  
    "techcrunch",
    "techradar",
   
    "the-hindu",
   
    "the-wall-street-journal",
    
    "the-washington-times",
    "time",
    "usa-today",
    
  ];
  static Future<NewsArt> fetchNews()async{
    final _random = new Random(); 
    var sourceID = sourcesId[_random.nextInt(sourcesId.length)]; 
    print(sourceID);
    
    
  http.Response response  = await http.get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=$sourceID&apiKey=bc54edcb741a42c3bff144e7b5f6c63d"));
  Map body_data = jsonDecode(response.body);
  List articles = body_data["articles"] ?? [] ;

 if (kDebugMode) {
   print(articles);
 } 

print("*******************************************************************");

final _newRandom = new Random(); 
    var myArticale = articles[_random.nextInt(articles.length)]; 
    print(myArticale);

    print("*******************************************************************");

    return NewsArt.fromApiToApp(myArticale);
      
    }
}


// // https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=9bb7bf6152d147ad8ba14cd0e7452f2f
// import 'dart:convert';
// import 'dart:math';
// import 'package:http/http.dart';


// import '../model/news_art.dart';

// class FetchNews {
//   static List sourcesId = [
//     "abc-news",
 
//     "bbc-news",
//     "bbc-sport",

//     "business-insider",

//     "engadget",
//     "entertainment-weekly",
//     "espn",
//     "espn-cric-info",
//     "financial-post",
   
//     "fox-news",
//     "fox-sports",
//     "globo",
//     "google-news",
//     "google-news-in",

//     "medical-news-today",
    
//     "national-geographic",
 
//     "news24",
//     "new-scientist",
   
//     "new-york-magazine",
//     "next-big-future",
  
//     "techcrunch",
//     "techradar",
   
//     "the-hindu",
   
//     "the-wall-street-journal",
    
//     "the-washington-times",
//     "time",
//     "usa-today",
    
//   ];

//   static Future<NewsArt> fetchNews() async {
//     final _random = new Random();
//     var sourceID = sourcesId[_random.nextInt(sourcesId.length)];
   
//     Response response = await get(Uri.parse(
//         "https://newsapi.org/v2/top-headlines?sources=$sourceID&apiKey=bc54edcb741a42c3bff144e7b5f6c63d"));

//     Map body_data = jsonDecode(response.body);
//     List articles = (body_data["articles"]) ;
  
//     final _Newrandom = new Random();
//     var myArticle = articles[_random.nextInt(articles.length)];
 

//     return NewsArt.fromAPItoApp(myArticle);
//   }
// }