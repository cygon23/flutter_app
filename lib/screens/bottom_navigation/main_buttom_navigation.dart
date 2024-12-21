import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/my_colors.dart';

class MainBottomNavigation extends StatefulWidget { // Fixed "StatelessWidget" to "StatefulWidget"
  const MainBottomNavigation();

  @override
  MainBottomNavigationState createState() => MainBottomNavigationState();
}

class MainBottomNavigationState extends State<MainBottomNavigation>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 2);
    _tabController!.addListener(() {
      // Empty listener - add functionality here if needed
    });
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_10,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[900],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: Colors.blue[900],
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: MyColors.grey_20,
                      ),
                      const SizedBox(width: 20), // Proper spacing between widgets
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 10,
                            width: 80,
                            color: MyColors.grey_20,
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 10,
                            width: 145,
                            color: MyColors.grey_20,
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 10,
                            width: 40,
                            color: MyColors.grey_20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: MyColors.grey_20,
                      ),
                      const SizedBox(width: 20), // Proper spacing between widgets
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 10,
                            width: 80,
                            color: MyColors.grey_20,
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 10,
                            width: 145,
                            color: MyColors.grey_20,
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 10,
                            width: 40,
                            color: MyColors.grey_20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: TabBar(
              indicatorColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 1,
              unselectedLabelColor: Colors.blue[900],
              labelColor: Colors.blue[900],
              tabs: [
                const Tab(icon: Icon(Icons.home, size: 21)),
                const Tab(icon: Icon(Icons.event_seat, size: 21)),
                FloatingActionButton(
                  heroTag: "kyo",
                  backgroundColor: Colors.blue[900],
                  elevation: 3,
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                const Tab(icon: Icon(Icons.notifications, size: 21)),
                const Tab(icon: Icon(Icons.shopping_cart, size: 21)),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
