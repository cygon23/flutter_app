import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/widget/my_text.dart';

class FacebookScreen extends StatelessWidget {
  const FacebookScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark, // Corrected brightness for white background
          statusBarColor: Colors.white,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Spacer for top space
            Spacer(),
            // Centered logo
            Image.asset(
              Img.get('ic_social_facebook_circle.png'),
              color: Colors.blue,
              width: 60,
              height: 60,
            ),
            Spacer(),
            // Icons at the bottom
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "F A C E B O O K",
                    style: MyText.body1(context)!.copyWith(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.account_circle_outlined, color: Colors.grey[500], size: 19),
                      SizedBox(width: 13),
                      Icon(Icons.email_outlined, color: Colors.grey[500], size: 20),
                      SizedBox(width: 13),
                      Icon(Icons.store_outlined, color: Colors.grey[500], size: 20),
                      SizedBox(width: 13),
                      Icon(Icons.visibility_outlined, color: Colors.grey[500], size: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
