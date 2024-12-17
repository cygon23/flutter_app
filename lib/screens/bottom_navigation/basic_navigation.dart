import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/model/bottom_nav.dart';

class BasicNavigation extends StatefulWidget {
  const BasicNavigation();

  @override
  _BasicNavigationState createState() => _BasicNavigationState();
}

class _BasicNavigationState extends State<BasicNavigation> {
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Home', Icons.store, null),
    BottomNav('Business', Icons.business, null),
    BottomNav('Profile', Icons.account_circle, null),
  ];

  int currentIndex = 0;
  late BuildContext ctx;

  // In case of pressing back
  void onBackPress() {
    if (Navigator.of(ctx).canPop()) {
      Navigator.of(ctx).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
      body: SafeArea(child: Text("Testing data")),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red[700],
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey[400],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: itemsNav.map((BottomNav d) {
          return BottomNavigationBarItem(
            icon: Icon(d.icon),
            label: d.title,
          );
        }).toList(),
      ),
    );
  }
}
