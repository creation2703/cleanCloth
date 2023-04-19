import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading:const Icon(Icons.home),
            title:const Text('Home'),
            onTap: () {
              // Navigate to the home screen
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading:const Icon(Icons.account_circle),
            title:const Text('Profile'),
            onTap: () {
              // Navigate to the profile screen
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            leading:const Icon(Icons.settings),
            title:const Text('Settings'),
            onTap: () {
              // Navigate to the settings screen
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }
}
