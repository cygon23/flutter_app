import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/model/bottom_nav.dart';

class ShiftingNavigation extends StatefulWidget {
  const ShiftingNavigation();

  @override
  _ShiftingNavigationState createState() => _ShiftingNavigationState();
}

class _ShiftingNavigationState extends State<ShiftingNavigation> {
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Movie & TV', Icons.ondemand_video, Colors.blueGrey[700]),
    BottomNav('Music', Icons.music_note, Colors.pink[800]),
    BottomNav('Books', Icons.book, Colors.grey[700]),
    BottomNav('Newsstand', Icons.chrome_reader_mode, Colors.teal[800])
  ];

  int currentIndex = 0; // Tracks the current selected index
  late BuildContext ctx;

  // Handle back button press
  void onBackPress() {
    if (Navigator.of(ctx).canPop()) {
      Navigator.of(ctx).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
      body: SafeArea(
        // Update the background color dynamically based on selected index
        child: Container(
          color: itemsNav[currentIndex].color, // Set background to match current item's color
          child: Center(
            child: Text(
              "Selected: ${itemsNav[currentIndex].title}",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
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
        // Use the selected item's color for the BottomNavigationBar background
        backgroundColor: itemsNav[currentIndex].color,
        selectedItemColor: Colors.white, // Highlight the selected item
        unselectedItemColor: Colors.grey[400], // Dim the unselected items
        currentIndex: currentIndex, // Keep track of the currently selected index
        onTap: (int index) {
          setState(() {
            currentIndex = index; // Update the selected index
          });
        },
        items: itemsNav.map((BottomNav d) {
          return BottomNavigationBarItem(
            backgroundColor: d.color, // Apply each item's background color
            icon: Icon(d.icon), // Display the icon for the item
            label: d.title, // Display the label for the item
          );
        }).toList(),
      ),
    );
  }
}
