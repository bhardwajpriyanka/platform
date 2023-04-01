import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebProvider extends ChangeNotifier
{
  WebViewController? webViewController;

  List Logos = [
    "assets/logo/log1-removebg-preview.png",
    "assets/logo/log2-removebg-preview.png",
    "assets/logo/log3-removebg-preview.png",
    "assets/logo/log4-removebg-preview.png",
    "assets/logo/log5-removebg-preview.png",
    "assets/logo/voot.jpg",
    "assets/logo/meesho.jpg",
    "assets/logo/flipkart.jpg",
  ];
  List names = [
    "Netflix",
    "Amazon Prime",
    "Disney+",
    "Hotstar",
    "Sony LIV",
    "Voot",
    "Meesho",
    "Flipkart"
  ];

  List urls = [
    Uri.parse("https://www.netflix.com/in/"),
    Uri.parse("https://www.primevideo.com/"),
    Uri.parse("https://www.hotstar.com/in"),
    Uri.parse("https://www.hotstar.com/in/sports"),
    Uri.parse("https://www.sonyliv.com/"),
    Uri.parse("https://www.voot.com/"),
    Uri.parse("https://www.meesho.com/"),
    Uri.parse("https://www.flipkart.com/"),
  ];

  void loadurl(int index)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${urls[index]}"),);
    notifyListeners();
  }
}