import 'package:flutter/material.dart';
import 'package:platform/screen/home/provider/home_provider.dart';
import 'package:platform/screen/home/view/home_screen.dart';
import 'package:platform/screen/web/web_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>WebProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: 'web',
        routes: {
          '/': (context) => Homescreen(),
          'web': (context) => webscreen(),
        },
      ),
    ),
  );
}
