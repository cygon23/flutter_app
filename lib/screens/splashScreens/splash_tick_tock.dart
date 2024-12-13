import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/widget/my_text.dart';

class TicktocScreen extends StatelessWidget {
  const TicktocScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.black,
        ),
      ),
      body: Center(  // Using Center instead of Stack
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              Img.get('ic_social_tiktok.png'),
              color: Colors.white,
              width: 70,
              height: 70,
            ),
            SizedBox(height: 15),  // Replaced Container with SizedBox
            Text(
              'Tik Tok',
              style: MyText.headline(context)!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
