import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../detail_view.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCont;
  // VoidCallback onpress;
  NewsContainer({
    super.key,
    required this.imgUrl,
    required this.newsDes,
    required this.newsHead,
    required this.newsUrl,
    required this.newsCont,
    //  required this.onpress
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(
            imgUrl,
            height: 300,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
         30.heightBox,
          Text(
            newsHead,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
          ).box.padding(EdgeInsets.symmetric(horizontal: 28)).make(),
          30.heightBox,
          Text(
            newsDes,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ).box.padding(EdgeInsets.symmetric(horizontal: 22)).make(),
          30.heightBox,
          Text(
             newsCont !="--"?
            newsCont.length> 250 ? newsCont.substring(0,250):        
            "${newsCont.toString().substring(0, newsCont.length-20)}....": newsCont,

            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
          ).box.padding(EdgeInsets.symmetric(horizontal: 23)).make(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  DetailView(newsUrl: newsUrl,)));
                },
                child: Text("read more"),
              ).box.padding(EdgeInsets.symmetric(horizontal: 20)).make(),
            ],
          ),
          30.heightBox,
        ]),
      ),
    );
  }
}
