
import 'package:flutter/material.dart';
import 'package:grocery/screens/home_screen.dart';
import 'package:grocery/screens/profile_screen.dart';
import 'package:grocery/screens/settings_screen.dart';

class AppDrawer extends StatelessWidget {
  final String currentLocation;
  final Function openMaps;
  final String userProfileImage;
  final String userName;
  final String userEmail;

  const AppDrawer({super.key,
    required this.currentLocation,
    required this.openMaps,
    required this.userProfileImage,
    required this.userName,
    required this.userEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightGreen,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
         const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            accountName: Text('Anshuman Singh'),
            accountEmail: Text('anshuman12@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
          ListTile(
            leading:const Icon(Icons.home),
            title:const Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));

            },
          ),


          ListTile(
            leading:const Icon(Icons.shopping_cart),
            title:const Text('My Cart'),
            onTap: () {
             // Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage()));

            },
          ),

          ListTile(
            leading: const Icon(Icons.list),
            title:const Text('My Order'),
            onTap: () {
              Navigator.pop(context, '/Cart');

            },
          ),
          ListTile(
            leading:const Icon(Icons.person),
            title:const Text('Profile'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));

            },
          ),
          ListTile(
            leading:const Icon(Icons.settings),
            title:const Text('Settings'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  SettingsScreen()));

            },
          ),
         const Divider(),
          ListTile(
            leading:const Icon(Icons.share),
            title:const Text('Share'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:const Icon(Icons.map),
            title:const Text('Open Maps'),
            onTap: openMaps as void Function()? ?? () {},
          ),
        ],
      ),
    );
  }
}




/*
import 'package:flutter/material.dart';


class AppDrawer extends StatelessWidget {
  final String currentLocation;
  final Function openMaps;
  final String userProfileImage;
  final String userName;
  final String userEmail;

  const AppDrawer({
    required this.currentLocation,
    required this.openMaps,
    required this.userProfileImage,
    required this.userName,
    required this.userEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightGreen,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
         const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            accountName: Text('Anshuman'),
            accountEmail: Text('anshuman12@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
          ListTile(

            leading:const Icon(Icons.home),
            title:const Text('Home'),
            onTap: () {
              Navigator.pop(context);

            },
          ),

          ListTile(
            leading:const Icon(Icons.shopping_cart),
            title:const Text('My Cart'),
            onTap: () {
              Navigator.pop(context);

            },
          ),

          ListTile(
            leading:const Icon(Icons.list),
            title:const Text('My Order'),
            onTap: () {
              Navigator.pop(context);

            },
          ),
          ListTile(
            leading:const Icon(Icons.person),
            title:const Text('Profile'),
            onTap: () {
              Navigator.pop(context);

            },
          ),
          ListTile(
            leading:const Icon(Icons.settings),
            title:const Text('Settings'),
            onTap: () {
              Navigator.pop(context);

            },
          ),



         const Divider(),
          ListTile(
            leading:const Icon(Icons.share),
            title:const Text('Share'),
            onTap: () {
              Navigator.pop(context);

            },
          ),

          ListTile(
            leading:const Icon(Icons.map),
            title:const Text('Open Maps'),
            onTap: openMaps as void Function()? ?? () {},
          ),
        ],
      ),
    );
  }
}
*/


