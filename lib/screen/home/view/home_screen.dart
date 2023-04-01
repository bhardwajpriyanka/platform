import 'package:flutter/material.dart';
import 'package:platform/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  WebProvider? webProvidertrue;
  WebProvider? webProviderfalse;

  @override
  Widget build(BuildContext context) {
    webProvidertrue=Provider.of<WebProvider>(context,listen: true);
    webProviderfalse=Provider.of<WebProvider>(context,listen: false);

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text("Platforms OTT"),
            centerTitle: true,
          ),
          body: GridView.builder(
            itemCount: webProviderfalse!.Logos.length,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ), itemBuilder: (context,index){
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context,'web',);
                webProviderfalse!.loadurl(index);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black)
                ),
                margin: EdgeInsets.all(6),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "${webProviderfalse!.Logos[index]}",
                        height: 77,
                        fit: BoxFit.cover,

                      ),
                    ),
                    Text(
                      "${webProviderfalse!.names[index]}",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
            );
          },
          ),
        )
    );
  }
}
