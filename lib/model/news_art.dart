class NewsArt{
 String imgUrl; 
  String newsHead; 
  String newsDes; 
  String newsUrl; 
  String newsCont;

  NewsArt({
    required this.imgUrl, 
    required this.newsHead, 
    required this.newsDes,
     required this.newsCont, 
     required this.newsUrl
  });

 static NewsArt fromApiToApp(Map<String, dynamic> articles){
    return NewsArt(
      imgUrl: articles["urlToImage"] ?? "https://images.unsplash.com/photo-1508921340878-ba53e1f016ec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmV3c3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
       newsHead: articles["title"]??"",
        newsDes: articles["description"]??"",
         newsCont: articles["content"]??"", 
         newsUrl: articles["url"]??""
         );

  }




}