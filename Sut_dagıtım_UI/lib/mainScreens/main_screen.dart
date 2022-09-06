import 'package:drivers_app_1/tabPages/earning_tab.dart';
import 'package:drivers_app_1/tabPages/home_tab.dart';
import 'package:drivers_app_1/tabPages/profile_tab.dart';
import 'package:drivers_app_1/tabPages/ratings_tab.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          HomeTabPage(),
          EarningTabPage(),
          RatingsTabPage(),
          ProfileTabPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: "SÜTSS",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "CÜZDAN",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "FAVORİ SÜT",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "HESAP",
          ),
        ],
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
      ),
    );
  }
}
