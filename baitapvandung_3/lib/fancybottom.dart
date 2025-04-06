import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class Fancybottom extends StatelessWidget {
  const Fancybottom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  final List<Widget> pages = [
    const MyContacts(),
    const MyEmails(),
    const MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FancyBottomNavigation Example")),
      body: Container(
        color: Colors.black12,
        constraints: const BoxConstraints.expand(),
        child: pages[currentPage],
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.contacts, title: "Contacts"),
          TabData(iconData: Icons.mail, title: "Emails"),
          TabData(iconData: Icons.person, title: "Profile"),
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}

class MyContacts extends StatelessWidget {
  const MyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Contacts - Hoàng Thị Thanh Tâm_TMDT"));
  }
}

class MyEmails extends StatelessWidget {
  const MyEmails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Emails - Hoàng Thị Thanh Tâm_TMDT"));
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Profile - Hoàng Thị Thanh Tâm_TMDT"));
  }
}
