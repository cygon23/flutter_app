
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';

class TwiterScreen extends StatelessWidget {
  const TwiterScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor:Colors.white,
          ),
        ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
         child: Stack(
           children:  [
             Container(
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Image.asset(
                     Img.get('img_social_twitter.png'),
                     // color: Colors.black,
                     width: 60,height: 60,
                   )
                 ],
               ),
               alignment: Alignment.center,
             )
           ],
         ),
      ),
    );
  }
}
