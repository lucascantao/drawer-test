import 'package:flutter/material.dart';

import 'char_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'DRAWER',
          style: TextStyle(fontSize: 14),
        ),
        backgroundColor: const Color(0xff1d1f22),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _buildHeader(),
            _buildItem(
                icon: Icons.home,
                title: "Home",
                onTap: () => Navigator.pop(context)),
            _buildItem(
                icon: Icons.notifications,
                title: "Notifications",
                onTap: () => Navigator.pushNamed(context, 'Notifications')),
            _buildItem(
                icon: Icons.person,
                title: "Profile",
                onTap: () => Navigator.pushNamed(context, 'Profile')),
            _buildItem(
                icon: Icons.settings,
                title: "Settings",
                onTap: () => Navigator.pushNamed(context, 'Settings')),
          ],
        ),
      ),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              InkWell(
                  onTap: () => Navigator.pushNamed(context, 'ImageViewer',
                      arguments: <String, String>{'image': 'art_1.jpg'}),
                  child:
                      const CharCard(name: 'Raiden Art 1', image: 'art_1.jpg')),
              InkWell(
                  onTap: () => Navigator.pushNamed(context, 'ImageViewer',
                      arguments: <String, String>{'image': 'art_2.jpg'}),
                  child:
                      const CharCard(name: 'Raiden Art 2', image: 'art_2.jpg')),
              InkWell(
                  onTap: () => Navigator.pushNamed(context, 'ImageViewer',
                      arguments: <String, String>{'image': 'art_3.jpg'}),
                  child:
                      const CharCard(name: 'Raiden Art 3', image: 'art_3.jpg')),
            ],
          ),
        ),
      ),
    );
  }

  _buildHeader() {
    return const DrawerHeader(
      decoration: BoxDecoration(color: Color(0xff1d1f22)),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/raiden.jpg'),
            radius: 40,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Raiden Shogun',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }

  _buildItem(
      {required IconData icon,
      required String title,
      required GestureTapCallback onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
      minLeadingWidth: 5,
    );
  }
}
