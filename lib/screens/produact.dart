
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget
{
  @override
  _MainScreenState createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin
{

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
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children:  [
          //HomeTabPage(),
          //StreamScreen(),
         // DashboardTabPage(),
          //MusicListPage(),
          //SongsListTabPage(),
        //  AccountTabPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            label: "En direct",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Tableau de bord",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Musique",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Paramètres",
          ),

        ],
        unselectedItemColor: const Color.fromARGB(137, 52, 57, 188),
        selectedItemColor: Color.fromARGB(255, 121, 207, 176),
        backgroundColor: Colors.grey[700],
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
      ),
    );
  }

}