import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/bottom_navigation/basic_navigation.dart';
import 'package:flutter_ui/screens/bottom_navigation/main_buttom_navigation.dart';
import 'package:flutter_ui/screens/bottom_navigation/primary_navigation.dart';
import 'package:flutter_ui/screens/bottom_navigation/shifting_navigation.dart';
import 'package:flutter_ui/screens/bottom_navigation/shifting_navigation_darkmode.dart';
import 'package:flutter_ui/screens/bottom_sheet/basic_buttom_sheet.dart';
import 'package:flutter_ui/screens/bottom_sheet/filter_bottom_sheet.dart';
import 'package:flutter_ui/screens/bottom_sheet/floating_buttom_sheet.dart';
import 'package:flutter_ui/screens/bottom_sheet/list_buttom_sheet.dart';
import 'package:flutter_ui/screens/cards/basic_cards.dart';
import 'package:flutter_ui/screens/cards/timeline_cards.dart';
import 'package:flutter_ui/screens/cards/wizard_cards.dart';
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
            title: Text('Twiter'),
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
            leading: Icon(Icons.contact_page),
            title: Text('Navigation'),
          ),

          ListTile(
            trailing: Icon(Icons.view_column),
            title: Text('Basic navigation'),
            onTap: (){
              Get.to(() => BasicNavigation());
            },
          ),

          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Slide navigation'),
            onTap: (){
              Get.to(() => ShiftingNavigation());
            },
          ),

          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Slide navigation(dark)'),
            onTap: (){
              Get.to(() => ShiftingNavigationDarkMode());
            },
          ),

          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Primary navigation(main single icon'),
            onTap: (){
              Get.to(() => PrimaryNavigation());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Primary navigation(main single icon'),
            onTap: (){
              Get.to(() => MainBottomNavigation());
            },
          ),

          ListTile(
            leading: Icon(Icons.bubble_chart),
            title: Text('buttons'),
          ),

          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Button sheets'),
            onTap: (){
              Get.to(() => BasicButtomSheet());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('List Button sheets'),
            onTap: (){
              Get.to(() =>ListButtomSheet());
            },
          ),

          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Floating Button sheets'),
            onTap: (){
              Get.to(() =>FloatingBottomSheet());
            },
          ),

          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Filter Button sheets'),
            onTap: (){
              Get.to(() =>FilterBottomSheet());
            },
          ),

          ListTile(
            leading: Icon(Icons.car_repair),
            title: Text('Cards'),
          ),

          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Basic Cards'),
            onTap: (){
              Get.to(() =>BasicCards());
            },
          ),

          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Timeline Cards'),
            onTap: (){
              Get.to(() =>TimelineCards());
            },
          ),

          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Timeline Cards'),
            onTap: (){
              Get.to(() =>wizardCards());
            },
          ),
        ],
      ),
    );
  }
}
