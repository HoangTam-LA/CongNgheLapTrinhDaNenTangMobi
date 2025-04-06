import 'package:flutter/material.dart';

class Linearpro extends StatelessWidget {
  const Linearpro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _value = 0;
  bool _working = false;

  void startWorking() async {
    setState(() {
      _working = true;
      _value = 0;
    });

    for (int i = 0; i < 10; i++) {
      if (!_working) break;
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        _value += 0.1;
      });
    }

    setState(() {
      _working = false;
    });
  }

  void stopWorking() {
    setState(() {
      _working = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter LinearProgressIndicator Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              height: 20,
              child: LinearProgressIndicator(
                value: _value,
                backgroundColor: Colors.cyan[100],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Percent: ${(_value * 100).round()}%",
              style: const TextStyle(fontSize: 20),
            ),
            const Text("Hoàng Thị Thanh Tâm_TMDT"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _working ? null : startWorking,
              child: const Text("Start"),
            ),
            ElevatedButton(
              onPressed: !_working ? null : stopWorking,
              child: const Text("Stop"),
            ),
          ],
        ),
      ),
    );
  }
}
