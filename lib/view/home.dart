import 'package:flutter/material.dart';
import 'package:news_app/controller/fetch_news.dart';
import 'package:news_app/model/news_art.dart';
import 'package:news_app/view/widgets/news_container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


bool isLoaqding= true; 
late NewsArt newsArt;


GetNews()async{
  
  newsArt =  await FetchNews.fetchNews();
  setState(() {
     isLoaqding = false; 
  });
}

@override
  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My"),
             Text("News", style: TextStyle(
              color: Colors.purple
             ),),
             
          ],
        ),
        centerTitle: true, 
        elevation: 0.0,
      ),
      body: PageView.builder(

        controller: PageController(initialPage: 0),
        scrollDirection:  Axis.horizontal, 
        // itemCount:  1000,
        onPageChanged: (value){
          
          GetNews();
          setState(() {
            isLoaqding = true;
          });
        },
        itemBuilder: (context, index){
          

          return  isLoaqding? Center(
            child: CircularProgressIndicator()
          ):
           NewsContainer(
            imgUrl: newsArt.imgUrl, 
            newsDes: newsArt.newsDes,
            newsHead: newsArt.newsHead, 
            newsUrl:newsArt.newsUrl ,
            newsCont: newsArt.newsCont, 
            
             );

      })
    );
  }
}

