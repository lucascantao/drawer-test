import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DRAWER DEMO',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        'Notifications': (context) => Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text(
                  'Notifications',
                  style: TextStyle(fontSize: 14),
                ),
                backgroundColor: const Color(0xff1d1f22),
              ),
              body: const Text("Text"),
            )
      },
    );
  }
}

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
      body: const Center(
        child: Text('Hello World!'),
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
