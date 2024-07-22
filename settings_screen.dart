

import 'package:flutter/material.dart';
import 'package:grocery/screens/profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Settings'),
      //   backgroundColor: Colors.green,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Text(
              'Account Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
           const SizedBox(height: 10),
            Card(
              child: ListTile(
                leading:const Icon(Icons.person),
                title:const Text('Edit Profile'),
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>const ProfileScreen()));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading:const Icon(Icons.lock),
                title:const Text('Change Password'),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePasswordScreen()));
                },
              ),
            ),
           const Divider(),
           const Text(
              'App Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
           const SizedBox(height: 10),
            Card(
              child: ListTile(
                leading:const Icon(Icons.notifications),
                title:const Text('Notifications'),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsScreen()));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading:const Icon(Icons.language),
                title:const Text('Language'),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => LanguageScreen()));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading:const Icon(Icons.dark_mode),
                title:const Text('Dark Mode'),
                onTap: () {
                  // Toggle dark mode
                  // Implement logic to switch between light and dark themes
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
