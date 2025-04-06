import 'package:flutter/material.dart';

class Position extends StatelessWidget {
  const Position({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ứng dụng Vị trí',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

// ======================== Màn hình chính ========================
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang chủ'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CenterScreen()),
                );
              },
              child: const Text('Chính giữa'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LeftScreen()),
                );
              },
              child: const Text('Bên trái'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RightScreen()),
                );
              },
              child: const Text('Bên phải'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UnderScreen()),
                );
              },
              child: const Text('Bên dưới'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomScreen()),
                );
              },
              child: const Text('Bottom Appbar'),
            ),
          ],
        ),
      ),
    );
  }
}

// ======================== Chính giữa (CenterScreen) ========================

class CenterScreen extends StatelessWidget {
  const CenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        flexibleSpace: const CustomAppBar(),
        centerTitle: true,
      ),
      body: const Center(child: Text('Hello World')),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          Icon(Icons.train),
          Icon(Icons.place),
          SizedBox(width: 3),
          Text(
            "Place",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// ======================== Bên trái (LeftScreen) ========================

class LeftScreen extends StatelessWidget {
  const LeftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar Title"),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.notifications_active),
          onPressed: () {
            showAlert(context);
          },
        ),
      ),
      body: const Center(child: Text("Hello World.")),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(content: Text("Hi")),
    );
  }
}

// ======================== Bên phải (RightScreen) ========================

class RightScreen extends StatelessWidget {
  const RightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar Title"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.file_upload),
            onPressed: () => {debugPrint("Click on upload button")},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => {debugPrint("Click on settings button")},
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
      ),
      body: const Center(child: Text('Flutter AppBar Tutorial')),
    );
  }
}

// ======================== Bên dưới (UnderScreen) ========================

class UnderScreen extends StatelessWidget {
  const UnderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          title: const Text('Flutter AppBar Example'),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Car")),
            Center(child: Text("Transit")),
            Center(child: Text("Bike")),
          ],
        ),
      ),
    );
  }
}

// ======================== Bên dưới (Bottom) ========================

class BottomScreen extends StatelessWidget {
  const BottomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomAppBar Example")),
      body: Center(child: Text('Flutter BottomAppBar Example')),
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
    );
  }
}
