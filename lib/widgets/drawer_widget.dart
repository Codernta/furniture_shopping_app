import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.white),
            currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png')),
            accountName: Text('Codernta',
                style: TextStyle(color: Colors.orangeAccent[700])),
            accountEmail: Text('Codernta@india.com',
                style: TextStyle(color: Colors.orangeAccent[700])),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined,
                color: Colors.orangeAccent[700]),
            title: Text('Profile',
                style: TextStyle(color: Colors.orangeAccent[700])),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart_outlined,
                color: Colors.orangeAccent[700]),
            title: Text('Shopping Cart',
                style: TextStyle(color: Colors.orangeAccent[700])),
          ),
          ListTile(
            leading: Icon(Icons.headset_mic_outlined,
                color: Colors.orangeAccent[700]),
            title: Text('Customer Service',
                style: TextStyle(color: Colors.orangeAccent[700])),
          ),
          ListTile(
            leading: Icon(Icons.star_border_outlined,
                color: Colors.orangeAccent[700]),
            title: Text('Star Membership',
                style: TextStyle(color: Colors.orangeAccent[700])),
          ),
          ListTile(
            leading:
                Icon(Icons.settings_outlined, color: Colors.orangeAccent[700]),
            title: Text('Settings',
                style: TextStyle(color: Colors.orangeAccent[700])),
          ),
          const SizedBox(height: 160),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('FurniMart Online Delivery Application\u00a9 \n 2022.',
                style:
                    TextStyle(color: Colors.orangeAccent[700], fontSize: 10)),
          ),
        ],
      ),
    );
  }
}
