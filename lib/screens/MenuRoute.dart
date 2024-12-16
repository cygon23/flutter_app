import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/bottom_navigation/basic_navigation.dart';
import 'package:flutter_ui/screens/splashScreens/splash_facebook.dart';
import 'package:flutter_ui/screens/splashScreens/splash_instagram.dart';
import 'package:flutter_ui/screens/splashScreens/splash_tick_tock.dart';
import 'package:flutter_ui/screens/splashScreens/splash_titwer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MenuRoute extends StatelessWidget {
  const MenuRoute();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER UI'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
        ListTile(
          leading: Icon(Icons.water_drop),
          title: Text('Slapsh screen'),
        ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Instagram'),
            onTap: (){
               Get.to(() => SplashInstagram());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('facebook'),
            onTap: (){
              Get.to(() => FacebookScreen());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('X'),
            onTap: (){
              Get.to(() => TwiterScreen());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Ticktock'),
            onTap: (){
              Get.to(() => TicktocScreen());
            },
          ),
          ListTile(
            trailing: Icon(Icons.view_column),
            title: Text('Bottom navigation'),
            onTap: (){
              Get.to(() => BasicNavigation());
            },
          )


        ],
      ),
    );
  }
}
