import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trang chủ của Hoàng Tâm')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai151()),
                );
              },
              child: const Text('Bài 15.1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai161()),
                );
              },
              child: const Text('Bài 16.1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai171()),
                );
              },
              child: const Text('Bài 17.1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai181()),
                );
              },
              child: const Text('Bài 18.1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai191()),
                );
              },
              child: const Text('Bài 19.1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai201()),
                );
              },
              child: const Text('Bài 20.1'),
            ),
          ],
        ),
      ),
    );
  }
}

// Bài 15.1 - Column Example
class Bai151 extends StatelessWidget {
  const Bai151({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Column Example - Thanh Tâm')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text('Button 1'),
            ),
            const SizedBox(height: 50),
            const Icon(Icons.ac_unit, size: 50, color: Colors.blue),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text('Button 2'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text('Very Long Button 3'),
            ),
          ],
        ),
      ),
    );
  }
}

// Bài 16.1 - Stack Example
class Bai161 extends StatelessWidget {
  const Bai161({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Stack Example - Thanh Tâm"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 250,
              height: 250,
              margin: const EdgeInsets.all(20),
              color: Colors.blueGrey,
              child: Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(height: 100, width: 300, color: Colors.green),
                  Transform(
                    alignment: FractionalOffset.topLeft,
                    transform: Matrix4.skewY(0.7),
                    child: Container(
                      height: 100,
                      width: 300,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Bài 17.1 - IndexedStack Example
class Bai171 extends StatelessWidget {
  const Bai171({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter IndexedStack Example - Thanh Tâm"),
        backgroundColor: Colors.blue,
      ),
      body: const IndexedStackExample(),
    );
  }
}

class IndexedStackExample extends StatefulWidget {
  const IndexedStackExample({super.key});

  @override
  State<IndexedStackExample> createState() => _IndexedStackExampleState();
}

class _IndexedStackExampleState extends State<IndexedStackExample> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 300,
          height: 200,
          child: IndexedStack(
            alignment: Alignment.center,
            index: selectedIndex,
            children: <Widget>[
              Container(width: 290, height: 210, color: Colors.green),
              Container(width: 250, height: 170, color: Colors.red),
              Container(width: 220, height: 150, color: Colors.yellow),
            ],
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              selectedIndex = (selectedIndex < 2) ? selectedIndex + 1 : 0;
            });
          },
          child: const Text("Next"),
        ),
      ],
    );
  }
}

// Bài 18.1 - Spacer Example
class Bai181 extends StatelessWidget {
  const Bai181({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Spacer Example-Thanh Tâm")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.ac_unit, size: 32),
            Spacer(),
            Icon(Icons.ac_unit, size: 36),
            Spacer(flex: 2),
            Icon(Icons.ac_unit, size: 48),
            Spacer(flex: 3),
            Icon(Icons.ac_unit, size: 24),
          ],
        ),
      ),
    );
  }
}

// Bài 19.1 - Expanded Example
class Bai191 extends StatelessWidget {
  const Bai191({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Expanded Example-Thanh Tâm"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(child: Text("B1"), onPressed: () {}),
            Expanded(
              flex: 3,
              child: Icon(Icons.ac_unit, size: 32, color: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all(Size(90, 30)),
              ),
              child: Text("B2"),
            ),
            Expanded(
              flex: 2,
              child: Icon(Icons.add_circle, size: 96, color: Colors.green),
            ),
            ElevatedButton(child: Text("Btn 3"), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

// Bài 20.1 - Sizedbox Example
class Bai201 extends StatelessWidget {
  const Bai201({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter SizedBox Example - Thanh Tâm"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shadowColor: Colors.redAccent,
              elevation: 10,
              minimumSize: const Size(200, 200),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            child: const Text("Button", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
