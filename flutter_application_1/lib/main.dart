import 'package:flutter/material.dart';
import 'dart:math';
import 'position.dart';

void main() {
  runApp(const Position());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ứng dụng Flutter',
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
      appBar: AppBar(title: const Text('Trang chủ')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Calculator()),
                );
              },
              child: const Text('Máy tính'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChangeBackground(),
                  ),
                );
              },
              child: const Text('Đổi màu nền'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Design()),
                );
              },
              child: const Text('Thiết kế giao diện'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HelloWorld()),
                );
              },
              child: const Text('Ứng dụng đếm số'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PrimeScreen()),
                );
              },
              child: const Text('Kiểm tra số nguyên tố'),
            ),
          ],
        ),
      ),
    );
  }
}

// ======================== Máy Tính (Calculator) ========================

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  final TextEditingController _controllerA = TextEditingController();
  final TextEditingController _controllerB = TextEditingController();
  double _result = 0;

  void _calculate(String operation) {
    double a = double.tryParse(_controllerA.text) ?? 0;
    double b = double.tryParse(_controllerB.text) ?? 0;

    setState(() {
      switch (operation) {
        case '+':
          _result = a + b;
          break;
        case '-':
          _result = a - b;
          break;
        case 'x':
          _result = a * b;
          break;
        case ':':
          _result = (b != 0) ? a / b : double.infinity;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controllerA,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Nhập số A'),
            ),
            TextField(
              controller: _controllerB,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Nhập số B'),
            ),
            const SizedBox(height: 20),
            Text('Kết quả $_result', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  [
                    '+',
                    '-',
                    'x',
                    ':',
                  ].map((op) => _buildCalcButton(op)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCalcButton(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ElevatedButton(
        onPressed: () => _calculate(label),
        child: Text(label, style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}

// ======================== Đổi Màu Nền (ChangeBackground) ========================

class ChangeBackground extends StatefulWidget {
  const ChangeBackground({super.key});

  @override
  ChangeBackgroundState createState() => ChangeBackgroundState();
}

class ChangeBackgroundState extends State<ChangeBackground> {
  Color _bgColor = Colors.white;

  void _changeBackground() {
    setState(() {
      _bgColor = Color(
        (Random().nextDouble() * 0xFFFFFF).toInt(),
      ).withAlpha(255);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      appBar: AppBar(title: const Text('Đổi màu nền')),
      body: Center(
        child: ElevatedButton(
          onPressed: _changeBackground,
          child: const Text('Đổi màu'),
        ),
      ),
    );
  }
}

// ======================== Thiết Kế Giao Diện (Design) ========================

class Design extends StatelessWidget {
  const Design({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Thiết kế giao diện')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hoàng Thị Thanh Tâm , 10_TMDT",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  [Colors.blue, Colors.green, Colors.orange]
                      .map(
                        (color) => Container(
                          width: 60,
                          height: 50,
                          color: color,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                        ),
                      )
                      .toList(),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
              width: 150,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Bạn đã bấm vào nút!')),
                );
              },
              child: const Text('Bấm vào đây'),
            ),
          ],
        ),
      ),
    );
  }
}

// ======================== Ứng Dụng Đếm Số (HelloWorld) ========================

class HelloWorld extends StatefulWidget {
  const HelloWorld({super.key});

  @override
  HelloWorldState createState() => HelloWorldState();
}

class HelloWorldState extends State<HelloWorld> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ứng dụng đếm số')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Số lần bấm nút:'),
            Text('$_counter', style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}

// ======================== Kiểm Tra Số Nguyên Tố (PrimeScreen) ========================

class PrimeScreen extends StatefulWidget {
  const PrimeScreen({super.key});

  @override
  PrimeScreenState createState() => PrimeScreenState();
}

class PrimeScreenState extends State<PrimeScreen> {
  final TextEditingController numController = TextEditingController();
  String _primeResult = "";

  void _checkPrime() {
    int num = int.tryParse(numController.text) ?? 0;
    setState(() {
      _primeResult =
          (num > 1 &&
                  !List.generate(
                    num - 2,
                    (i) => i + 2,
                  ).any((x) => num % x == 0))
              ? "$num là số nguyên tố"
              : "$num không phải số nguyên tố";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kiểm tra số nguyên tố')),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: numController,
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _checkPrime,
              child: const Text('Kiểm tra'),
            ),
            Text(_primeResult),
          ],
        ),
      ),
    );
  }
}
