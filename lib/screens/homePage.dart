import 'package:flutter/material.dart';
import 'package:untitled/screens/ar.dart';
import 'package:untitled/screens/paiment.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State  with TickerProviderStateMixin {
  int _selectedIndex = 0;

  static const List   <Widget> _widgetOptions = <Widget>[
    Text(
      'Home Page Content',
      style: TextStyle(fontSize: 24),
    ),
    Text(
      'Shop Page Content',
      style: TextStyle(fontSize: 24),
    ),
    Text(
      'Profile Page Content',
      style: TextStyle(fontSize: 24),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (c)=>CardPaymentPage()));
              Card cart = Card();
              Navigator.push(context, MaterialPageRoute(builder: (c)=>CardPaymentPage()));

            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(-5, 224, 25, 25),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle item 2 tap
                //Navigator.pop(context); // Close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (c)=>HelloWorldPage()));

              },
            ),
            // Add more ListTile widgets for additional menu items
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}