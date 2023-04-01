import 'package:flutter/material.dart';
import 'package:platform/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
class webscreen extends StatefulWidget {
  const webscreen({Key? key}) : super(key: key);

  @override
  State<webscreen> createState() => _webscreenState();
}

class _webscreenState extends State<webscreen> {
  WebProvider? webProvidertrue;
  WebProvider? webProviderfalse;

  @override
  Widget build(BuildContext context) {
    webProvidertrue=Provider.of<WebProvider>(context,listen: true);
    webProviderfalse=Provider.of<WebProvider>(context,listen: false);

    return SafeArea(
        child: Scaffold(
          body: WebViewWidget(controller: webProviderfalse!.webViewController!,),
        )
    );
  }
}
