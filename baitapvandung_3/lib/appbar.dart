import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Unified App"),
          backgroundColor: Colors.blue,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.notifications_active),
            onPressed: () => showAlert(context),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.file_upload),
              onPressed: () => debugPrint("Click on upload button"),
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () => debugPrint("Click on settings button"),
            ),
            PopupMenuButton(
              icon: const Icon(Icons.share),
              itemBuilder:
                  (context) => [
                    const PopupMenuItem(value: 1, child: Text("Facebook")),
                    const PopupMenuItem(value: 2, child: Text("Instagram")),
                  ],
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Car - Hoàng Thị Thanh Tâm_TMDT")),
            Center(child: Text("Transit - Hoàng Thị Thanh Tâm_TMDT")),
            Center(child: Text("Bike - Hoàng Thị Thanh Tâm_TMDT")),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              PopupMenuButton(
                icon: Icon(Icons.share),
                itemBuilder:
                    (context) => [
                      PopupMenuItem(value: 1, child: Text("Facebook")),
                      PopupMenuItem(value: 2, child: Text("Instagram")),
                    ],
              ),
              IconButton(icon: Icon(Icons.email), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) =>
              const AlertDialog(content: Text("Hi - Hoàng Thị Thanh Tâm_TMDT")),
    );
  }
}
