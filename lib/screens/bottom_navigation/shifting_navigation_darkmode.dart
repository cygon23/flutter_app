import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/model/bottom_nav.dart';

class ShiftingNavigationDarkMode extends StatefulWidget {
  @override
  _ShiftingNavigationDarkModeState createState() =>
      _ShiftingNavigationDarkModeState();
}

class _ShiftingNavigationDarkModeState
    extends State<ShiftingNavigationDarkMode> {
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Movie & TV', Icons.ondemand_video, Colors.blueGrey[700]),
    BottomNav('Music', Icons.music_note, Colors.pink[800]),
    BottomNav('Books', Icons.book, Colors.grey[700]),
    BottomNav('Newsstand', Icons.chrome_reader_mode, Colors.teal[800])
  ];

  int currentIndex = 0; // Tracks the selected index
  bool isDarkMode = false; // Tracks the current theme mode (light or dark)

  @override
  Widget build(BuildContext context) {
    // Define light and dark themes
    final ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: itemsNav[currentIndex].color,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey[400],
      ),
    );

    final ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: itemsNav[currentIndex].color,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey[700],
      ),
    );

    return MaterialApp(
      theme: isDarkMode ? darkTheme : lightTheme, // Apply the current theme
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Shifting Navigation",
            style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
          ),
          actions: [
            // Dark mode toggle button
            IconButton(
              icon: Icon(
                isDarkMode ? Icons.dark_mode : Icons.light_mode,
                color: isDarkMode ? Colors.yellow : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode; // Toggle dark mode
                });
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            // color: itemsNav[currentIndex].color, // Dynamic background color
            child: Center(
              child: Text(
                "Selected: ${itemsNav[currentIndex].title}",
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index; // Update selected index
            });
          },
          items: itemsNav.map((BottomNav d) {
            return BottomNavigationBarItem(
              icon: Icon(d.icon),
              label: d.title,
            );
          }).toList(),
        ),
      ),
    );
  }
}
