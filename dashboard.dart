import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:grocery/screens/cart_page.dart';
import 'package:grocery/screens/category_screen.dart';
import 'package:grocery/screens/home_screen.dart';
import 'package:grocery/screens/profile_screen.dart';
import 'package:grocery/screens/settings_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'drawer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;
  final bool _showBadge = true;
  String _appBarTitle = 'Fetching location...';

  Position? _currentPosition;

  final List<Widget> _screens = [
    HomeScreen(),
    CategoryScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _fetchLocation();
  }

  Future<void> _fetchLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      List<Placemark> placemarks =
      await placemarkFromCoordinates(position.latitude!, position.longitude!);
      setState(() {
        _currentPosition = position;
        _appBarTitle =
        '${placemarks.first.locality}, ${placemarks.first.administrativeArea}';
      });
    } catch (e) {
      print('Error fetching location: $e');
      setState(() {
        _appBarTitle = 'Error fetching location';
      });
    }
  }

  Future<void> _openMaps() async {
    if (_currentPosition != null) {
      String googleUrl =
          'https://www.google.com/maps/search/?api=1&query=${_currentPosition!.latitude},${_currentPosition!.longitude}';
      if (await canLaunch(googleUrl)) {
        await launch(googleUrl);
      } else {
        print('Could not open the map.');
      }
    }
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      switch (index) {
        case 0:
          _appBarTitle = 'Grocery';
          break;
        case 1:
          _appBarTitle = 'Category';
          break;
        case 2:
          _appBarTitle = 'Profile';
          break;
        case 3:
          _appBarTitle = 'Settings';
          break;
        default:
          _appBarTitle = 'Grocery';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text(
          _appBarTitle,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                color: Colors.white,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return  CartScreen();
                    },
                  ),
                ),
              ),
              if (_showBadge)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      '3', // Replace with actual count or indicator
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      drawer: AppDrawer(
        currentLocation: _appBarTitle, // Pass _appBarTitle instead of _currentLocation
        openMaps: _openMaps,
        userProfileImage: '',
        userName: '',
        userEmail: '',
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.shopping_cart),
          //   label: 'My Cart',
          // ),
        ],
      ),
    );
  }
}



/*
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:grocery/screens/cart_page.dart';
import 'package:grocery/screens/category_screen.dart';
import 'package:grocery/screens/home_screen.dart';
import 'package:grocery/screens/profile_screen.dart';
import 'package:grocery/screens/settings_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'drawer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;
  final bool _showBadge = true;
  String _currentLocation = 'Fetching location...';

  Position? _currentPosition;

  final List<Widget> _screens = [
    HomeScreen(),
    CategoryScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _fetchLocation();
  }

  Future<void> _fetchLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      List<Placemark> placemarks =
      await placemarkFromCoordinates(position.latitude!, position.longitude!);
      setState(() {
        _currentPosition = position;
        _currentLocation =
        '${placemarks.first.locality}, ${placemarks.first.administrativeArea}';
      });
    } catch (e) {
      print('Error fetching location: $e');
      setState(() {
        _currentLocation = 'Error fetching location';
      });
    }
  }

  Future<void> _openMaps() async {
    if (_currentPosition != null) {
      String googleUrl =
          'https://www.google.com/maps/search/?api=1&query=${_currentPosition!.latitude},${_currentPosition!.longitude}';
      if (await canLaunch(googleUrl)) {
        await launch(googleUrl);
      } else {
        print('Could not open the map.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon:const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text(
          _currentLocation,
          style:const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        // actions: [
        //   Stack(
        //     children: [
        //       IconButton(
        //         icon:const Icon(Icons.shopping_cart),
        //         color: Colors.white,
        //         onPressed: () => Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) {
        //               return const CartPage();
        //             },
        //           ),
        //         ),
        //       ),
        //       if (_showBadge)
        //         Positioned(
        //           right: 0,
        //           top: 0,
        //           child: Container(
        //             padding: const EdgeInsets.all(4),
        //             decoration: BoxDecoration(
        //               color: Colors.red,
        //               borderRadius: BorderRadius.circular(8),
        //             ),
        //             child:const Text(
        //               '3', // Replace with actual count or indicator
        //               style: TextStyle(color: Colors.white),
        //             ),
        //           ),
        //         ),
        //     ],
        //   ),
        // ],
      ),
      drawer: AppDrawer(
        currentLocation: _currentLocation,
        openMaps: _openMaps,
        userProfileImage: '',
        userName: '',
        userEmail: '',

      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.shopping_cart),
          //   label: 'My Cart',
          // ),
        ],
      ),
    );
  }
}

 */



