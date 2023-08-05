import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_register_page/screens/favourites.dart';
import '../utils/color_utils.dart';
import 'login_page.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Himal Malla'),
            accountEmail: Text('himalmalla@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('img/welcome.png'),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                hexStringToColor("a8e6cf"),
                hexStringToColor("dcedc1"),
                hexStringToColor("ffd3b6")
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite_outline),
            title: Text('Favourite'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Favourites()));
            },
          ),
          ListTile(
            leading: Icon(Icons.policy_outlined),
            title: Text('Policies'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text('Logout'),
            onTap: () {
              FirebaseAuth.instance.signOut().then(
                (value) {
                  print("Signed out");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
