import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/model/bottom_nav.dart';

class PrimaryNavigation extends StatefulWidget {
  const PrimaryNavigation();

  @override
  _PrimaryNavigationState createState() => _PrimaryNavigationState();
}

class _PrimaryNavigationState extends State<PrimaryNavigation> {
  int currentIndex = 0; // Tracks the selected navigation index

  // Define the navigation items
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Home', Icons.store, null), // Icon A
    BottomNav('Business', Icons.business, null), // Icon B (floating on top)
    BottomNav('Profile', Icons.account_circle, null), // Icon C
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Primary Navigation",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Text(
          "This is the ${itemsNav[currentIndex].title} page",
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 1; // Switch to the "Business" page (Icon B)
          });
        },
        child: Icon(
          itemsNav[1].icon, // Icon B
          size: 30,
        ),
        backgroundColor: Colors.red[700],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                itemsNav[0].icon, // Icon A
                color: currentIndex == 0 ? Colors.yellow : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  currentIndex = 0; // Switch to the "Home" page
                });
              },
            ),
            const SizedBox(width: 40), // Space for the FloatingActionButton
            IconButton(
              icon: Icon(
                itemsNav[2].icon, // Icon C
                color: currentIndex == 2 ? Colors.yellow : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  currentIndex = 2; // Switch to the "Profile" page
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
