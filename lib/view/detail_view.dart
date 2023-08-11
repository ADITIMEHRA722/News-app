import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class DetailView extends StatefulWidget {
  String newsUrl; 
   DetailView({super.key, required this.newsUrl});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  double _progress =0;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      widget.newsUrl = widget.newsUrl.contains("http:")
          ? widget.newsUrl.replaceAll("http:", "https:")
          : widget.newsUrl;
    });
  }
  

  final Completer<InAppWebViewController> controller =
      Completer<InAppWebViewController>();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: InAppWebView(
           initialUrlRequest: URLRequest(url: Uri.parse(widget.newsUrl)),
        //  javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (InAppWebViewController webViewController) {
            setState(() {
              controller.complete(webViewController);
            });
          },
          onProgressChanged: (InAppWebViewController webViewController, int progress){
    setState(() {
      _progress= progress/100;
    });
          },
        ),
        
      ),
    );
  }
}