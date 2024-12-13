
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/widget/my_text.dart';

import '../../data/img.dart';


class SplashInstagram extends StatelessWidget {
  const SplashInstagram();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: Colors.white
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                Img.get('ic_social_instagram.png'),color: Colors.red[400],
                width: 60, height: 60,
              ),
              alignment: Alignment.center,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("from",style: MyText.body2(context)!.copyWith(color: Colors.grey)),
                  Container(height: 5),
                  Text(" M E T A", style: MyText.body1(context)!.copyWith(color:Colors.red),)
                ],
              ),
              alignment: Alignment.bottomCenter,
            )
          ],
        ),
      ),
    );
  }
}
